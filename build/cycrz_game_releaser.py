import sys
import os
import shutil
import subprocess

GAME = "CookieCraze"
PASSWORD = "CrazeMastery"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_DIR = os.path.abspath(os.path.join(SCRIPT_DIR, ".."))
WIN_SOURCE = os.path.join(REPO_DIR, "releases", "windows", f"{GAME}_windows_portable_password_is_{PASSWORD}", "cycrz")
ARCHIVE_DIR = os.path.join(REPO_DIR, "releases", "archives")
ARCHIVE_NAME = f"{GAME}_windows_portable_password_is_{PASSWORD}.7z"
ARCHIVE = os.path.join(ARCHIVE_DIR, ARCHIVE_NAME)
INSTALLER = os.path.join(ARCHIVE_DIR, f"{GAME}_windows_installer_password_is_{PASSWORD}.exe")
RELEASE_DIR = os.path.join(REPO_DIR, "releases", "windows", f"{GAME}_windows_portable_password_is_{PASSWORD}")
SITE_HTML = r"C:\Users\tonys\OneDrive\Documents\github\tsatria03.github.io\projects\games\CookieCraze\index.html"
SITE_REPO = r"C:\Users\tonys\OneDrive\Documents\github\tsatria03.github.io"
NVGT = r"C:\nvgt\nvgt.exe"
SEVENZIP = r"C:\Program Files\7-Zip\7z.exe"
ISCC = r"C:\Program Files (x86)\Inno Setup 6\ISCC.exe"
GH = r"C:\Program Files\GitHub CLI\gh.exe"

SKIP = 0
DO = 1
SILENT_SKIP = 2

def ask(question):
    answer = input(f"{question} (Y/N): ").strip().upper()
    return answer == "Y"

def run_cmd(args, cwd=None):
    result = subprocess.run(args, cwd=cwd)
    return result.returncode == 0

def error(msg):
    print(f"ERROR: {msg}")
    if any(f == SKIP for f in [skip_compile, skip_package, skip_release, skip_website, skip_empty_release]):
        input("Press any key to continue...")
    sys.exit(1)

with open(os.path.join(REPO_DIR, "docks", "version.txt"), "r") as f:
    VERSION = f.read().strip()

if not VERSION:
    print("ERROR: Could not read version from version.txt.")
    sys.exit(1)

TITLE = f"{GAME} V{VERSION}"
TAG = f"V{VERSION}0"

args = sys.argv[1:]
skip_compile       = int(args[0]) if len(args) > 0 else DO
skip_package       = int(args[1]) if len(args) > 1 else DO
skip_release       = int(args[2]) if len(args) > 2 else DO
skip_website       = int(args[3]) if len(args) > 3 else DO
skip_empty_release = int(args[4]) if len(args) > 4 else DO

interactive = any(f == SKIP for f in [skip_compile, skip_package, skip_release, skip_website, skip_empty_release])

print(f"\nVersion: {VERSION}")
print(f"Tag:     {TAG}")
print(f"Title:   {TITLE}\n")

# Compile
do_compile = False
if skip_compile == DO:
    do_compile = True
elif skip_compile == SKIP:
    do_compile = ask("Do you want to compile this project?")

if do_compile:
    print("Compiling NVGT source...")
    if not run_cmd([NVGT, "-c", "-Q", os.path.join(REPO_DIR, "cycrz.nvgt")]):
        error("NVGT compilation failed.")
    print("Compilation successful.\n")
    print("Replacing compiled output in release folder...")
    cycrz_out = os.path.join(REPO_DIR, "cycrz")
    cycrz_dest = os.path.join(RELEASE_DIR, "cycrz")
    if os.path.exists(cycrz_dest):
        shutil.rmtree(cycrz_dest)
    shutil.move(cycrz_out, cycrz_dest)
    print("Release folder updated.\n")
else:
    if skip_compile == SKIP:
        print("Skipping compilation.\n")

# Package
do_package = False
if skip_package == DO:
    do_package = True
elif skip_package == SKIP:
    do_package = ask("Do you want to package this project?")

if do_package:
    if not os.path.exists(WIN_SOURCE):
        error("cycrz folder not found in release directory. Please compile the full project first.")
    print("Building Windows portable 7z archive...")
    if os.path.exists(ARCHIVE):
        os.remove(ARCHIVE)
    os.makedirs(ARCHIVE_DIR, exist_ok=True)
    if not run_cmd([SEVENZIP, "a", "-t7z", ARCHIVE, WIN_SOURCE, "-mx=9", "-m0=LZMA2", "-md=64m", "-mfb=64", "-ms=on", "-mmt=12", f"-p{PASSWORD}", "-mhe=on"]):
        error("7z archive build failed.")
    print("Archive built successfully.\n")
    print("Building Windows installer...")
    if not run_cmd([ISCC, "/Q", os.path.join(SCRIPT_DIR, "cycrz_game_installer.iss")]):
        error("Installer build failed.")
    print("Installer built successfully.\n")
else:
    if skip_package == SKIP:
        print("Skipping packaging.\n")

# Release
do_release = False
if skip_release == DO:
    do_release = True
elif skip_release == SKIP:
    do_release = ask("Do you want to release this project?")

if not do_release:
    if skip_release == SKIP:
        print("Skipping release.\n")
    sys.exit(0)

assets = []
if os.path.exists(ARCHIVE):
    assets.append(ARCHIVE)
if os.path.exists(INSTALLER):
    assets.append(INSTALLER)

if not assets:
    print("WARNING: No assets found.\n")
    proceed = False
    if skip_empty_release == DO:
        proceed = True
    elif skip_empty_release == SKIP:
        proceed = ask("Do you still want to create an empty release?")
    if not proceed:
        print("Release cancelled.\n")
        sys.exit(0)

print(f"Tagging latest commit as {TAG}...")
run_cmd(["git", "tag", "-f", TAG], cwd=REPO_DIR)
run_cmd(["git", "push", "origin", "-f", TAG], cwd=REPO_DIR)

print("\nDeleting existing release if it exists...")
subprocess.run([GH, "release", "delete", TAG, "--yes"], cwd=REPO_DIR, stderr=subprocess.DEVNULL)

print(f"\nCreating GitHub release {TITLE} with tag {TAG}...\n")
cmd = [GH, "release", "create", TAG] + assets + ["--title", TITLE, "--notes", ""]
if not run_cmd(cmd, cwd=REPO_DIR):
    error("GitHub release creation failed.")

print("\nRelease complete.\n")

if not assets:
    print("WARNING: No assets were released. Skipping website update.\n")
    sys.exit(0)

# Website
do_website = False
if skip_website == DO:
    do_website = True
elif skip_website == SKIP:
    do_website = ask("Do you want to update the game's website?")

if not do_website:
    if skip_website == SKIP:
        print("Skipping website update.\n")
    sys.exit(0)

print("Updating website...")
ps1 = os.path.join(SCRIPT_DIR, "cycrz_site_updater.ps1")
if not run_cmd(["powershell", "-NoProfile", "-ExecutionPolicy", "Bypass", "-File", ps1, "-HtmlFile", SITE_HTML, "-Version", VERSION, "-Tag", TAG]):
    error("Failed to update website HTML.")
print("Website updated.\n")

print("Committing website changes...")
log = subprocess.run(["git", "log", "--oneline"], cwd=SITE_REPO, capture_output=True, text=True).stdout
if f"Updated {GAME} to version {VERSION}." in log:
    print(f"WARNING: Commit already exists. Skipping commit.\n")
    sys.exit(0)

run_cmd(["git", "add", "projects/games/CookieCraze/index.html"], cwd=SITE_REPO)
if not run_cmd(["git", "commit", "-m", f"Updated {GAME} to version {VERSION}."], cwd=SITE_REPO):
    error("Failed to commit website changes.")
if not run_cmd(["git", "push"], cwd=SITE_REPO):
    error("Failed to push website changes.")
print("Website committed and pushed.\n")
