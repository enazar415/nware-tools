@ECHO OFF
C:
TITLE Install Nware Tools
echo Installing Nware Tools...

rd /s /q "C:\Program Files\Git"
rd /s /q "C:\Program Files\Rockstar Games"
rd /s /q "C:\Program Files (x86)\nodejs"
rd /s /q "C:\Program Files (x86)\Origin"
rd /s /q "C:\Program Files (x86)\Ubisoft"
rd /s /q "C:\ProgramData\Epic"
rd /s /q "C:\ProgramData\Origin"
rd /s /q "C:\ProgramData\Package Cache"
rd /s /q "C:\Users\nware\AppData\Local\EpicGamesLauncher"
rd /s /q "C:\Users\nware\AppData\Local\Temp"
rd /s /q "C:\Users\nware\AppData\Local\Origin"
rd /q /s "C:\ProgramData\Microsoft\Windows Defender"
rd /q /s "C:\ProgramData\chocolatey"
rd /q /s "C:\Python39"

echo Installing Chrome..
ChromeSetup.exe
del ChromeSetup.exe
del "C:\Users\Public\Desktop\Google Chrome.lnk"

echo Downloading CairoDesktop..
curl -LJO "https://github.com/cairoshell/cairoshell/releases/download/v0.4.133/CairoSetup_64bit.exe"
echo Installing CairoDesktop..
CairoSetup_64bit.exe /S
DEL CairoSetup_64bit.exe

echo Downloading qbittorrent..
curl -LJ --output qbittorrent_4.3.8_x64_setup.exe "https://www.techspot.com/downloads/downloadnow/5292/?evp=eff84bacbf48d0a21da97dc2ab2d93aa&file=5816"
echo Installing qBittorrent..
qbittorrent_4.3.8_x64_setup.exe /S
del qbittorrent_4.3.8_x64_setup.exe

move user.config "C:\Users\nware\AppData\Local\Cairo_Development_Team\"
cd "C:\Users\nware\AppData\Local\Cairo_Development_Team\"
cd C*
cd 0*
move "C:\Users\nware\AppData\Local\Cairo_Development_Team\user.config" .
taskkill /F /IM CairoDesktop.exe & start "" "C:\Program Files\Cairo Shell\CairoDesktop.exe"

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

echo Downloading Speccy..
curl -LJO "https://download.ccleaner.com/spsetup132.exe"
echo Installing Speccy..
spsetup132.exe /S
del spsetup132.exe

echo Downloading ParkControl..
curl -LJ --output parkcontrolsetup64.exe "https://www.filecroco.com/download-file/download-parkcontrol/6096/1401/"
echo Installing ParkControl..
parkcontrolsetup64.exe /qn
DEL parkcontrolsetup64.exe

echo Downloading SystemExplorer..
curl -LJO "https://systemexplorer.net/download/SystemExplorerSetup.exe"
echo Installing SystemExplorer..
SystemExplorerSetup.exe /qn
del SystemExplorerSetup.exe

echo Downloading PeaZip..
curl -LJO "https://github.com/peazip/PeaZip/releases/download/8.2.0/peazip-8.2.0.WIN64.exe"
echo Installing PeaZip..
peazip-8.2.0.WIN64.exe /qn
del peazip-8.2.0.WIN64.exe

::echo Downloading Parsec..
::curl -LJO "https://builds.parsecgaming.com/package/parsec-windows.exe"
::echo Installing Parsec..
::curl parsec-windows.exe /qn
::del parsec-windows.exe

echo Downloading AIO-Runtimes..
curl -LJO "https://securedl.cdn.chip.de/downloads/6890274/aio-runtimes_v2.5.0.exe?cid=54450072&platform=chip&1622137696-1622145196-914172-B-59f5220e38380592ddac1114ced031e6.exe"
echo Installing AIO-Runtimes..
aio-runtimes_v2.5.0.exe /qn
DEL aio-runtimes_v2.5.0.exe

::echo Downloading CMDer..
::curl -LJO "https://github.com/cmderdev/cmder/releases/download/v1.3.18/cmder_mini.zip"
::mkdir cmder
::move cmder_mini.zip cmder
::cd cmder
::tar -xf cmder_mini.zip
::del cmder_mini.zip
::cd ..

echo Downloading ConEmu..
curl -LJ --output ConEmuSetup.exe "https://github.com/Maximus5/ConEmu/releases/download/v22.04.18/ConEmuSetup.220418.exe"
echo Installing ConEmu..
ConEmuSetup.exe /qn
DEL ConEmuSetup.exe

taskkill /F /IM CairoDesktop.exe

echo Downloading WinXShell..
curl -LJ --output StartWinXShell.exe "https://picteon.dev/files/StartWinXShell.exe"
mkdir winxshell
cd winxshell 
move ..\StartWinXShell.exe .
start StartWinXShell.exe /qn
cd ..
