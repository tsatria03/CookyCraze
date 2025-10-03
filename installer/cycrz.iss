#define MyAppName "CookyCraze"
#define MyAppVersion "2.9"
#define MyAppPublisher "tsatria03"
#define MyAppURL "https://tsatria03.itch.io/cooky-craze"
#define MyAppExeName "cycrz.exe"
#define MyReadme "readme.txt"
[Setup]
AppId={{64477427-9EAA-4A52-905B-269D21D008DA}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=admin
OutputDir=.
OutputBaseFilename=CookyCraze_windows_installer_password_is_CrazeMastery
Password=CrazeMastery
Encryption=yes
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional icons:"
Name: "startmenuicon"; Description: "Create a Start Menu shortcut"; GroupDescription: "Additional icons:"

[Files]
Source: "C:\Users\tsatr\OneDrive\Documents\GitHub\CookyCraze\releases\windows\CookyCraze_windows_portable_password_is_CrazeMastery\cycrz\*"; \
  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\tsatr\OneDrive\Documents\GitHub\CookyCraze\releases\windows\CookyCraze_windows_portable_password_is_CrazeMastery\cycrz\docks\readme.txt"; \
DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: startmenuicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch {#MyAppName}"; \
  Flags: nowait postinstall skipifsilent unchecked;
Filename: "{app}\{#MyReadme}"; Description: "View ReadMe file"; \
  Flags: postinstall shellexec skipifsilent unchecked;
