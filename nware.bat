@ECHO OFF
C:
TITLE Install Nware Tools
echo Installing Nware Tools...

echo Downloading Freecommander..
curl -LJ --output "Freecommander.zip" "https://freecommander.com/downloads/FreeCommanderXE-32-public_setup.zip"
tar -xf Freecommander.zip
echo Installing Freecommander..
FreeCommanderXE-32-public_setup.exe /S
del FreeCommanderXE-32-public_setup.exe
del Freecommander.zip

echo Downloading geany..
curl -LJO "https://download.geany.org/geany-1.37.1_setup.exe"
echo Installing geany..
geany-1.37.1_setup.exe /S
del geany-1.37.1_setup.exe

echo Downloading SystemExplorer..
curl -LJO "https://systemexplorer.net/download/SystemExplorerSetup.exe"
echo Installing SystemExplorer..
SystemExplorerSetup.exe /S
del SystemExplorerSetup.exe






