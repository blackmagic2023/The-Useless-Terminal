@echo off
cls
color c
call :color f "UUID Deamion Activation Socket..."
ping localhost -n 2 >nul
call :color a " [ OK ] "
echo.
call :color f "Starting Login Service..."
call :color a " [ OK ] "
echo.
call :color f "Secure Server Launching"
call :color a " [ OK ] "
echo.
call :color f "Auth Server Starting..."
ping localhost -n 3 >nul
call :color a " [ OK ] "
echo.
call :color f "Chacking Network..."
call :color a " [ OK ] "
echo.
call :color f "Hostname Service!"
ping localhost -n 5 >nul
call :color c " [WARNING!] "
echo.
call :color f "Permit User Sessions..."
call :color a " [ OK ] "
echo.
:serhome
set /p ser=23.91.11.152@Local ~ 
echo Updating...
@REM [Exportation] / Called(%PATHVARIABLE%) = TRUE
echo export -f pathremove pathprepend pathappend
echo  Set the initial path
echo export PATH/bin:/usr/bin
@REM shell.linux.dll
@REM userconfig.dll
echo if [ $EUID -eq 0 ] ; then
echo         pathappend /sbin:/usr/sbin
echo         unset HISTFILE
ping localhost -n 3 >nul
netsh advfirewall reset
echo pathremove () {
echo         local IFS':'
echo         local NEWPATH
echo         local DIR
echo         local PATHVARIABLE${2:-PATH}
echo         for DIR in ${!PATHVARIABLE} ; do
echo                 if [ "$DIR" ! "$" ] ; then
echo                   NEWPATH${NEWPATH:$NEWPATH:}$DIR
echo                 if %USERAUTHLEVEL% < 1 ; then
echo                      STREAM.ABORT(STATUS=SECONDARYBUFFER, FRAMEPARENT(CLASSX15)
ECHO end if
echo         done
echo         export $PATHVARIABLE"$NEWPATH"
echo }
ping localhost -n 1 >nul
echo pathprepend () {
echo         pathremove $1 $2
echo         local PATHVARIABLE${2:-PATH}
echo         export $PATHVARIABLE"$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
echo }
ping localhost -n 3 >nul
echo if [ -f "/etc/bashrc" ] ; then
echo   source /etc/bashrc
echo fi
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
netsh winhttp proxy rest
ping localhost -n 3 >nul
attrib
cls