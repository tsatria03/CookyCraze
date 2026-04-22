#define MyAppId "{{8706944F-4D18-40AE-A7D8-565BAA65E672}}"
#define MyAppName "CookieCraze"
#define MyAppVersion Trim(FileRead(FileOpen("..\docks\version.txt")))
#define MyAppPublisher "tsatria03"
#define MyAppURL "https://tsatria03.github.io/projects/games/CookieCraze"
#define MyAppExeName "cycrz.exe"

[Setup]
AppId={#MyAppId}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppPublisher}\{#MyAppName}\cycrz
DefaultGroupName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=admin
UninstallDisplayName={#MyAppName} {#MyAppVersion}
AppMutex={#MyAppName}_Mutex
OutputDir=..\releases\archives
OutputBaseFilename=CookieCraze_windows_installer_password_is_CrazeMastery
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
Source: "C:\Users\tonys\OneDrive\Documents\GitHub\CookieCraze\releases\windows\CookieCraze_windows_portable_password_is_CrazeMastery\cycrz\*"; \
  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: startmenuicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch {#MyAppName}"; \
  Flags: nowait postinstall skipifsilent unchecked;
