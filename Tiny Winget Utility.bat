@echo off
title Winget Tiny Utility
goto mainMenu
:mainMenu
cls
color B
echo                ---------
echo                MAIN MENU
echo                ---------
echo.
echo.
echo 1) (Basic Setup)       ------------------
echo                        7-Zip
echo                        Spotify
echo                        Google Chrome
echo                        ------------------
echo.

echo 2) (Multimedia Setup)  ------------------
echo                        VLC
echo                        K-Lite
echo                        ------------------
echo.

echo 3) (Programmer Setup)  ------------------
echo                        Notepad++
echo                        Visual Studio Code
echo                        Windows Terminal
echo                        ------------------
echo.

echo 4) (Utility Setup)     ------------------
echo                        WinDirStat
echo                        OBS
echo                        qBittorrent
echo                        ------------------
echo.

echo 5) (Gaming Setup)      ------------------
echo                        Steam
echo                        GOG Galaxy
echo                        Ubisoft Connect
echo                        Epic Games Store
echo                        EA Desktop
echo                        BattleNet
echo                        Discord
echo                        ------------------
echo.

echo 6) (Complete Setup)
echo.
echo 7) Custom
echo.
echo.
set /p choice=Type your choice then press Enter:
if %choice%==1 goto batch1
if %choice%==2 goto batch2
if %choice%==3 goto batch3
if %choice%==4 goto batch4
if %choice%==5 goto batch5
if %choice%==6 goto batch6
else goto wrongChoice

:wrongChoice
cls
color E
echo ------------
echo Wrong Choice
echo ------------
echo.
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:batch1
call:install 7zip.7zip
call:install Spotify.Spotify
call:install Google.Chrome
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:batch2
call:install VideoLAN.VLC
call:install CodecGuide.K-LiteCodecPackFull
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:batch3
call:install Notepad++.Notepad++
call:install Microsoft.VisualStudioCode
call:install Microsoft.WindowsTerminal
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:batch4
call:install WinDirStat.WinDirStat
call:install OBSProject.OBSStudio
call:install qBittorrent.qBittorrent
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:batch5
call:install Valve.Steam
call:install GOG.Galaxy
call:install Ubisoft.Connect
call:install EpicGames.EpicGamesLauncher
call:install ElectronicArts.EADesktop
call:install Blizzard.BattleNet
call:install Discord.Discord
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:batch6
call:install 7zip.7zip
call:install Spotify.Spotify
call:install Google.Chrome
call:install VideoLAN.VLC
call:install CodecGuide.K-LiteCodecPackFull
call:install VNotepad++.Notepad++
call:install Microsoft.VisualStudioCode
call:install Microsoft.WindowsTerminal
call:install WinDirStat.WinDirStat
call:install OBSProject.OBSStudio
call:install qBittorrent.qBittorrent
call:install Valve.Steam
call:install GOG.Galaxy
call:install Ubisoft.Connect
call:install EpicGames.EpicGamesLauncher
call:install ElectronicArts.EADesktop
call:install Blizzard.BattleNet
call:install Discord.Discord
echo Press any key to return to the Main Menu.
pause >nul
goto mainMenu

:install
winget install --exact --id %~1

