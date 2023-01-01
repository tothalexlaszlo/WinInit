#Requires -RunAsAdministrator

wsl --install

winget source update
winget upgrade --all
winget import -i apps.json --accept-package-agreements --accept-source-agreements

 $answer = Read-Host -Prompt "Do you want to restart computer [y]es or [n]o (default)?"
 if ($answer -ieq 'y') {
    Restart-Computer
 }