@ECHO OFF
C:
TITLE Install Nware Tools
echo Installing Nware Tools...

echo Installing Chrome..
ChromeSetup.exe
del ChromeSetup.exe

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

echo Downloading ParkControl..
curl -LJO "https://dl.bitsum.com/files/parkcontrolsetup64.exe"
echo Installing ParkControl..
parkcontrolsetup64.exe /S
del parkcontrolsetup64.exe

echo Downloading CMDer..
curl -LJO "https://github.com/cmderdev/cmder/releases/download/v1.3.18/cmder_mini.zip"
mkdir cmder
move cmder_mini.zip cmder
cd cmder
tar -xf cmder_mini.zip
del cmder_mini.zip
cd ..

echo Downloading AIO-Runtimes..
curl -LJO "https://securedl.cdn.chip.de/downloads/6890274/aio-runtimes_v2.5.0.exe?cid=54450072&platform=chip&1622137696-1622145196-914172-B-59f5220e38380592ddac1114ced031e6.exe"
echo Installing AIO-Runtimes..
aio-runtimes_v2.5.0.exe /S
DEL aio-runtimes_v2.5.0.exe


