@ECHO OFF
C:
TITLE Install Nware Tools
echo Installing Nware Tools...

echo Installing Chrome..
ChromeSetup.exe
del ChromeSetup.exe

echo Downloading qbittorrent..
curl -LJ --output qbittorrent_4.3.8_x64_setup.exe "https://www.techspot.com/downloads/downloadnow/5292/?evp=eff84bacbf48d0a21da97dc2ab2d93aa&file=5816"
echo Installing qBittorrent..
qbittorrent_4.3.8_x64_setup.exe /S
del qbittorrent_4.3.8_x64_setup.exe

echo Downloading Geany..
curl -LJO "https://download.geany.org/geany-1.37.1_setup.exe"
echo Installing Geany..
geany-1.37.1_setup.exe /S
del geany-1.37.1_setup.exe

echo Downloading WinRar..
curl -LJO "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-602.exe"
echo Installing WinRar..
winrar-x64-602.exe /S
del winrar-x64-602.exe

echo Downloading PeaZip..
curl -LJO "https://github.com/peazip/PeaZip/releases/download/8.2.0/peazip-8.2.0.WIN64.exe"
echo Installing PeaZip..
peazip-8.2.0.WIN64.exe /qn
del peazip-8.2.0.WIN64.exe

echo Downloading Speccy..
curl -LJO "https://download.ccleaner.com/spsetup132.exe"
echo Installing Speccy..
spsetup132.exe /S
del spsetup132.exe

echo Downloading SystemExplorer..
curl -LJO "https://systemexplorer.net/download/SystemExplorerSetup.exe"
echo Installing SystemExplorer..
SystemExplorerSetup.exe /qn
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
aio-runtimes_v2.5.0.exe /qn
DEL aio-runtimes_v2.5.0.exe

echo Downloading CairoDesktop..
curl -LJO "https://github.com/cairoshell/cairoshell/releases/download/v0.4.133/CairoSetup_64bit.exe"
echo Installing CairoDesktop..
CairoSetup_64bit.exe /S
DEL CairoSetup_64bit.exe

echo Downloading ShellDesktop..
curl -LJO "http://bb4win.sourceforge.net/bblean/files/bbLean-1.17.1.bin32.exe"
echo Installing ShellDesktop..
bbLean-1.17.1.bin32.exe /qn
DEL bbLean-1.17.1.bin32.exe
