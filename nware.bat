@ECHO OFF
C:
TITLE Install Nware Tools
echo Installing Nware Tools...

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

echo Downloading CMDer..
curl -LJO "https://github.com/cmderdev/cmder/releases/download/v1.3.18/cmder_mini.zip"
mkdir cmder
move cmder_mini.zip cmder
cd cmder
tar -xf cmder_mini.zip
del cmder_mini.zip
