color B
echo off
cls
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo off
cls
copy "%cd%\mytinstall-files.zip" "C:\Program Files"
setx /M path "%PATH%;C:\Program Files\mytinstall-files"
cls
echo  ____  _  _  ___  ____   __    __    __      __   ____  ____  _____  _  _       
echo (_  _)( \( )/ __)(_  _) /__\  (  )  (  )    /__\ (_  _)(_  _)(  _  )( \( )      
echo  _)(_  )  ( \__ \  )(  /(__)\  )(__  )(__  /(__)\  )(   _)(_  )(_)(  )  (       
echo (____)(_)\_)(___/ (__)(__)(__)(____)(____)(__)(__)(__) (____)(_____)(_)\_)()()()
cd C:\Program Files
tar -xf mytinstall-files.zip
del mytinstall-files.zip
cd /
@echo off

set SCRIPT="%TEMP%\mytinstallicon.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\mytinstall.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Program Files\mytinstall-files\mytinstall.bat" >> %SCRIPT%
echo oLink.IconLocation = "C:\Program Files\mytinstall-files\additional-stuff\icon\main-icon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%
exit
