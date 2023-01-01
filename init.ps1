#Requires -RunAsAdministrator

wsl --install

winget source update
winget upgrade --all
winget import -i apps.json --accept-package-agreements --accept-source-agreements