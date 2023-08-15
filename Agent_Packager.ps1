$LTURL = 'https://adits.hostedrmm.com/LabTech/Deployment.aspx?InstallerToken=b9077543f46f7c0c03e7b1ad38437257'
$MOE_L = 'https://raw.githubusercontent.com/brad-kiehne/Public/main/MOE_Loader'
$7zip = 'https://adits.blob.core.windows.net/automate/Labtech_Scripts/Installers/7zip/7za.exe'
$7dll = 'https://adits.blob.core.windows.net/automate/Labtech_Scripts/Installers/7zip/7za.dll'
$7zxa = 'https://adits.blob.core.windows.net/automate/Labtech_Scripts/Installers/7zip/7zxa.dll'
$7zcon = 'https://adits.blob.core.windows.net/automate/Labtech_Scripts/Installers/7zip/7zCon.sfx'

Invoke-WebRequest -Uri $LTURL -OutFile C:\Moetech\Software\agent.msi
Invoke-WebRequest -Uri $7zip -OutFile C:\Moetech\Software\7za.exe
Invoke-WebRequest -Uri $7dll -OutFile C:\Moetech\Software\7za.dll
Invoke-WebRequest -Uri $7zxa -OutFile C:\Moetech\Software\7zxa.dll
Invoke-WebRequest -Uri $7zcon -OutFile C:\Moetech\Software\7zCon.sfx
Start-Process 'C:\Moetech\Software\7za.exe'  -ArgumentList 'a -sfx Agent_Packager.exe -mx1 C:\Moetech\Software\agent.msi'