@echo off
setlocal EnableExtensions EnableDelayedExpansion
title APB Config Loader

:Beginning
set "GameDir="

if exist gamedir.txt (
    for /f "usebackq delims=" %%A in ("gamedir.txt") do set "GameDir=%%A"
)

:PickGameDir
cls

if exist "!GameDir!\Binaries\APB.exe" (
    goto Menu
)
color 0F
echo Please enter your APB install directory
echo Example:
echo D:\Steam\APB Reloaded
echo.
echo If you have the game installed in a protected Windows directory
echo (e.g. Program Files or Program Files ^(x86^)),
echo this may cause issues. It is recommended to move the game elsewhere.
echo.

set /p GameDir=Game Directory: 
cls

set "GameDir=%GameDir:"=%"

if not exist "!GameDir!\Binaries\APB.exe" (
    echo.
    echo ERROR: APB.exe not found at:
    echo !GameDir!\Binaries\APB.exe
    pause
    set "GameDir="
    goto PickGameDir
)

echo !GameDir! | findstr /i "Program Files" >nul
if not errorlevel 1 (
    echo.
	color 04
    echo WARNING:
    echo APB is installed in a protected directory.
    echo Config installation may fail.
    echo It is recommended that you have the game installed elsewhere e.g C:/Games/APB Reloaded.
    pause
)

echo !GameDir!>gamedir.txt
goto Menu

:ResetGameDir
del gamedir.txt 2>nul
set "GameDir"=""

goto Beginning



:Header
cls
color 0F
echo     __                             ______            _____      
echo    / /   ____ _____  ___  _____   / ____/___  ____  / __(_)___ _
echo   / /   / __ `/_  / / _ \/ ___/  / /   / __ \/ __ \/ /_/ / __ `/
echo  / /___/ /_/ / / /_/  __/ /     / /___/ /_/ / / / / __/ / /_/ / 
echo /_____/\__,_/ /___/\___/_/      \____/\____/_/ /_/_/ /_/\__, /  
echo                                                        /____/   
echo Selected Client: %GameDir%
echo.
exit /b

:ClearGERLocalization
set "TargetDir=!GameDir!\APBGame\Localization\GER"

if not exist "!TargetDir!\" exit /b

del /f /q "!TargetDir!\*" >nul 2>&1
for /d %%D in ("!TargetDir!\*") do rd /s /q "%%D"

exit /b

:Menu
call :Header
echo 1: Stutter Fix (This starts the game if you aren't using shortcuts)
echo 2: No Stutter Fix (This starts the game if you aren't using shortcuts)
echo 3: Localisation
echo 4: Graphics/Keybinds/UI/Ragdolls/Muzzle Flash
echo 5: Update APB
echo D: Change Game Directory
echo S: Shortcut Creation
echo.
set /p Menu=Select Option: 

if "%Menu%"=="1" goto Main
if "%Menu%"=="2" goto Edit
if "%Menu%"=="3" goto Localisation
if "%Menu%"=="4" goto Customisation
if "%Menu%"=="5" goto APBLauncher
if /i "%Menu%"=="D" goto ResetGameDir
if /i "%Menu%"=="S" goto Shortcut

color 04
echo.
echo Invalid Option
pause
cls
goto Menu

:Main
call :Header
echo Disk Cache Choice
echo 1: Off (32GB/More RAM)
echo 2: On (16GB/Less RAM)
set /p SFDCO=Select Option: 

if "%SFDCO%"=="1" ( call :Header
xcopy GCOff\DCOff "%GameDir%"\ /s /e /y /q
goto Steam)
if "%SFDCO%"=="2" ( call :Header
xcopy GCOff\DCOn "%GameDir%"\ /s /e /y /q
goto Steam)

:Edit
call :Header
echo Disk Cache Choice
echo 1: Off (32GB/More RAM)
echo 2: On (16GB/Less RAM)
set /p NSFDCO=Select Option: 

if "%NSFDCO%"=="1" ( call :Header
xcopy GCOn\DCOff "%GameDir%"\ /s /e /y /q
goto Steam)
if "%NSFDCO%"=="2" ( call :Header
xcopy GCOn\DCOn "%GameDir%"\ /s /e /y /q
goto Steam)

:Localisation
call :Header
echo Choose Localisation
echo 1: Dark Blue/Dark Red
echo 2: Green/Red (APB Default)
echo 3: Grey/White
echo 4: Light Pink/White
echo 5: Hot Pink/White
echo 6: Purple/White
echo 7: Addons (apply after colour)
echo 8: Clear GER (if swapping colour)
echo M: Main Menu
echo.
set /p Loc=Select Option: 

if "%Loc%"=="1" goto LocDBDR
if "%Loc%"=="2" goto LocGR
if "%Loc%"=="3" goto LocGW
if "%Loc%"=="4" goto LocLPW
if "%Loc%"=="5" goto LocHPW
if "%Loc%"=="6" goto LocPW
if "%Loc%"=="7" goto LocAddons
if "%Loc%"=="8" ( 
	call :ClearGERLocalization 
	goto Localisation
)
if /i "%Loc%"=="M" goto Menu

:LocDBDR
call :Header
xcopy Localization\Colours\DarkBlue_DarkRed "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation
:LocGR
call :Header
xcopy Localization\Colours\Green_Red "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation

:LocGW
call :Header
echo Include Engine Font?
echo 1: Yes
echo 2: No
echo 3: Go Back
echo.
set /p GWEF=Select Option: 

if "%GWEF%"=="1" (
xcopy Localization\Colours\Grey_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
xcopy Localization\Colours\Grey_White_Engine "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation )

if "%GWEF%"=="2" (
xcopy Localization\Colours\Grey_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation )

if "%GWEF%"=="3" (
    goto Localisation )

color 04
echo.
echo Invalid Option
pause
cls
goto LocGW

:LocLPW
call :Header
xcopy Localization\Colours\LightPink_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation
:LocHPW
call :Header
xcopy Localization\Colours\Pink_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation
:LocPW
call :Header
xcopy Localization\Colours\Purple_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto Localisation

color 04
echo.
echo Invalid Option
pause
cls
goto Localisation

:LocAddons
call :Header
echo Choose Localisation Addons
echo 1: Coloured Weapons
echo 2: Mission Titles (Equipment)
echo 3: Shortened Chat Categories
echo 4: Vehicle Stats
echo 5: Weapon Stats
echo 6: Default Objectives
echo M: Main Menu
echo.
set /p LocAdd=Select Option: 

if "%LocAdd%"=="1" goto LocAddon1
if "%LocAdd%"=="2" goto LocAddon2
if "%LocAdd%"=="3" goto LocAddon3
if "%LocAdd%"=="4" goto LocAddon4
if "%LocAdd%"=="5" goto LocAddon5
if "%LocAdd%"=="6" goto LocAddon6
if /i "%LocAdd%"=="M" goto Menu

color 04
echo.
echo Invalid Option
pause
cls
goto LocAddons

:LocAddon1
call :Header
xcopy Localization\Addons\Coloured_Weapons "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons

:LocAddon2
call :Header
echo Choose Colour
echo 1: Dark Blue/Dark Red
echo 2: Green/Red (APB Default)
echo 3: Grey/White
echo 4: Light Pink/White
echo 5: Hot Pink/White
echo 6: Purple/White
echo.
set /p FinalStageCol=Select Option: 

if "%FinalStageCol%"=="1" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\DarkBlue_DarkRed "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons )
if "%FinalStageCol%"=="2" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\Green_Red "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons )

if "%FinalStageCol%"=="3" goto FSCEF

if "%FinalStageCol%"=="4" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\LightPink_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons )
if "%FinalStageCol%"=="5" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\Pink_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons )
if "%FinalStageCol%"=="6" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\Purple_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons )

color 04
echo.
echo Invalid Option
pause
cls
goto LocAddon2

:FSCEF
call :Header
echo Include Engine Font?
echo 1: Yes
echo 2: No
echo 3: Go Back
set /p FSEFC=Select Option: 

if "%FSEFC%"=="1" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\Grey_White_Engine "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons )

if "%FSEFC%"=="2" ( call :Header
xcopy Localization\Addons\Mission_Titles_Equipment\Grey_White "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons  )

if "%FSEFC%"=="3" (
    goto LocAddon2 )

color 04
echo.
echo Invalid Option
pause
cls
goto FSCEF

:LocAddon3
call :Header
xcopy Localization\Addons\Short_Chat_Cat "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons
:LocAddon4
call :Header
xcopy Localization\Addons\Vehicle_Stats "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons
:LocAddon5
call :Header
xcopy Localization\Addons\Weapon_Stats "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons
:LocAddon6
call :Header
xcopy Localization\Addons\Default_Objective "%GameDir%"\APBGame\Localization\GER\ /s /e /y /q
timeout 1
goto LocAddons



:Customisation
call :Header
echo Graphics/Muzzle Flash/Ragdolls/UI
echo 1: Graphics
echo 2: Ragdolls (Muzzle flash under this option)
echo 3: Keybinds
echo 4: Transparent UI
echo M: Main Menu
echo.
set /p Config=Select Option: 

if "%Config%"=="1" goto Graphics
if "%Config%"=="2" goto Ragdolls
if "%Config%"=="3" goto Keybinds
if "%Config%"=="4" goto UI
if /i "%Config%"=="M" goto Menu

color 04
echo.
echo Invalid Option
pause
cls
goto Customisation

:Graphics
call :Header
echo Select Graphics File
echo 1: Mix
echo 2: Low
echo 3: High
echo 4: Go Back
echo.
set /p GDB=Select Option: 

if "%GDB%"=="1" goto MixG
if "%GDB%"=="2" goto LowG
if "%GDB%"=="3" goto HighG
if "%GDB%"=="4" goto Customisation

color 04
echo.
echo Invalid Option
pause
cls
goto Graphics

:MixG
call :Header
xcopy Graphics\Mix "%GameDir%"\APBGame\Config\ /s /e /y /q
timeout 1
goto Customisation
:LowG
call :Header
xcopy Graphics\Low "%GameDir%"\APBGame\Config\ /s /e /y /q
timeout 1
goto Customisation
:HighG
call :Header
xcopy Graphics\High "%GameDir%"\APBGame\Config\ /s /e /y /q
timeout 1
goto Customisation

:Ragdolls
call :Header
echo Select Ragdolls
echo 1: Stock Ragdolls
echo 2: No NPC Ragdolls
echo 3: No Ragdolls
echo M: Main Menu
echo.
set /p Ragdoll=Select Option: 

if "%Ragdoll%"=="1" goto StockRagdoll
if "%Ragdoll%"=="2" goto NoNPCRagdoll
if "%Ragdoll%"=="3" goto NoRagdoll
if /i "%Ragdoll%"=="M" goto Menu

color 04
echo.
echo Invalid Option
pause
cls
goto Ragdolls

:StockRagdoll
call :Header
echo Select Muzzle Flash
echo 1: Muzzle Flash On
echo 2: Muzzle Flash Off
echo 3: Go Back
echo.
set /p RDMF=Select Option: 

if "%RDMF%"=="1" ( call :Header
xcopy Ragdolls\NormMFOn "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation )

if "%RDMF%"=="2" ( call :Header
xcopy Ragdolls\NormMFOff "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation )

if "%RDMF%"=="3" (
goto Customisation )

color 04
echo.
echo Invalid Option
pause
cls
goto StockRagdoll

:NoNPCRagdoll
call :Header
echo Select Muzzle Flash
echo 1: Muzzle Flash On
echo 2: Muzzle Flash Off
echo 3: Go Back
echo.
set /p NNPCRD=Select Option: 

if "%NNPCRD%"=="1" ( call :Header
xcopy Ragdolls\NoNPCMFOn "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation )

if "%NNPCRD%"=="2" ( call :Header
xcopy Ragdolls\NoNPCMFOff "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation )

if "%NNPCRD%"=="3" (
goto Customisation )

color 04
echo.
echo Invalid Option
pause
cls
goto NoNPCRagdoll

:NoRagdoll
call :Header
echo Select Muzzle Flash
echo 1: Muzzle Flash On
echo 2: Muzzle Flash Off
echo 3: Go Back
echo.
set /p NRD=Select Option: 

if "%NRD%"=="1" ( call :Header
xcopy Ragdolls\NoneMFOn "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation )

if "%NRD%"=="2" ( call :Header
xcopy Ragdolls\NoneMFOff "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation )

if "%NRD%"=="3" (
goto Customisation )

color 04
echo.
echo Invalid Option
pause
cls
goto NoRagdoll

:Keybinds
call :Header
xcopy Keybinds "%GameDir%"\ /s /e /y /q
timeout 1
goto Customisation

:UI
call :Header
xcopy TransparentUI "%GameDir%"\APBGame\Config /s /e /y /q
timeout 1
goto Customisation



:APBLauncher
call :Header
echo Opening APB Launcher
start "" "%GameDir%\Launcher\APBLauncher.exe"
timeout 1
goto Menu



:Steam
call :Header
echo 1: Launch With Steam
echo 2: Launch Without Steam
echo M: Main Menu
echo.
set /p Launch=Select Option: 

if "%Launch%"=="1" goto SteamLaunch
if "%Launch%"=="2" goto NoSteamLaunch
if /i "%Launch%"=="M" goto Menu

color 04
echo.
echo Invalid Option
pause
cls
goto Steam

:SteamLaunch
call :Header
echo Launching With Steam
start "" "%GameDir%\Binaries\APB.exe" -language=1031 -nomovies
exit /b

:NoSteamLaunch
call :Header
echo Launching Without Steam
start "" "%GameDir%\Binaries\APB.exe" -language=1031 -nomovies -nosteam
exit /b



:Shortcut
call :Header
echo Select Shortcuts (Desktop)
echo.
echo 1: Stutter Fix Steam (DiskCache Off 32GB RAM/More)
echo 2: Stutter Fix No Steam (DiskCache Off 32GB RAM/More)
echo 3: Stutter Fix Steam (DiskCache On 16GB RAM/Less)
echo 4: Stutter Fix No Steam (DiskCache On 16GB RAM/Less)
echo 5: Edit Steam (DiskCache Off 32GB RAM/More)
echo 6: Edit No Steam (DiskCache Off 32GB RAM/More)
echo 7: Edit Steam (DiskCache On 16GB RAM/Less)
echo 8: Edit No Steam (DiskCache On 16GB RAM/Less)
echo M: Main Menu
echo.

set /p DskSc=Select Option: 

if "%DskSc%"=="1" goto Shortcut_Stutter_Steam_DCOff
if "%DskSc%"=="2" goto Shortcut_Stutter_NoSteam_DCOff
if "%DskSc%"=="3" goto Shortcut_Stutter_Steam_DCOn
if "%DskSc%"=="4" goto Shortcut_Stutter_NoSteam_DCOn
if "%DskSc%"=="5" goto Shortcut_Edit_Steam_DCOff
if "%DskSc%"=="6" goto Shortcut_Edit_NoSteam_DCOff
if "%DskSc%"=="7" goto Shortcut_Edit_Steam_DCOn
if "%DskSc%"=="8" goto Shortcut_Edit_NoSteam_DCOn
if /i "%DskSc%"=="M" goto Menu

color 04
echo.
echo Invalid Option
pause
cls
goto Shortcut


:Shortcut_Stutter_Steam_DCOff
call :CreateLauncherAndShortcut "GCOff\DCOff" "Stutter Fix (Steam) DCOff" "-language=1031 -nomovies"
goto Shortcut

:Shortcut_Stutter_Steam_DCOn
call :CreateLauncherAndShortcut "GCOff\DCOn" "Stutter Fix (Steam) DCOn" "-language=1031 -nomovies"
goto Shortcut

:Shortcut_Stutter_NoSteam_DCOff
call :CreateLauncherAndShortcut "GCOff\DCOff" "Stutter Fix (No Steam) DCOff" "-language=1031 -nomovies -nosteam"
goto Shortcut

:Shortcut_Stutter_NoSteam_DCOn
call :CreateLauncherAndShortcut "GCOff\DCOn" "Stutter Fix (No Steam) DCOn" "-language=1031 -nomovies -nosteam"
goto Shortcut

:Shortcut_Edit_Steam_DCOff
call :CreateLauncherAndShortcut "GCOn\DCOff" "Edit (Steam) DCOff" "-language=1031 -nomovies"
goto Shortcut

:Shortcut_Edit_Steam_DCOn
call :CreateLauncherAndShortcut "GCOn\DCOn" "Edit (Steam) DCOn" "-language=1031 -nomovies"
goto Shortcut

:Shortcut_Edit_NoSteam_DCOff
call :CreateLauncherAndShortcut "GCOn\DCOff" "Edit (No Steam) DCOff" "-language=1031 -nomovies -nosteam"
goto Shortcut

:Shortcut_Edit_NoSteam_DCOn
call :CreateLauncherAndShortcut "GCOn\DCOn" "Edit (No Steam) DCOn" "-language=1031 -nomovies -nosteam"
goto Shortcut

:CreateLauncherAndShortcut
setlocal EnableDelayedExpansion
set "ScriptRoot=%~dp0"

set "Source=%~1"
set "Name=%~2"
set "Args=%~3"

set "LauncherBat=!ScriptRoot!!Name!.bat"
set "Desktop=%USERPROFILE%\Desktop"
set "Shortcut=!Desktop!\!Name!.lnk"

if exist "!LauncherBat!" (
    echo Launcher already exists:
    echo !LauncherBat!
    pause
    endlocal
    exit /b
)

if exist "!Shortcut!" (
    echo Shortcut already exists on desktop:
    echo !Name!.lnk
    pause
    endlocal
    exit /b
)

(
    echo @echo off
    echo setlocal EnableExtensions
    echo xcopy "!ScriptRoot!\!Source!" "!GameDir!\" /s /e /y /q
    echo start "" "!GameDir!\Binaries\APB.exe" !Args!
) > "!LauncherBat!"

powershell -NoProfile -Command ^
 "$s=(New-Object -COM WScript.Shell).CreateShortcut('!Shortcut!');" ^
 "$s.TargetPath='!LauncherBat!';" ^
 "$s.WorkingDirectory='!ScriptRoot!';" ^
 "$s.IconLocation='!GameDir!\Binaries\APB.exe';" ^
 "$s.Save()"

echo.
echo Created shortcut:
echo !Name!
pause

endlocal
exit /b



