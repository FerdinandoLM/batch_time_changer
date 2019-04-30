@echo off
rem Adding temporarly 5 minutes to current time
echo To run this script you must execute it with administrator privileges

rem Backup of current time in single vars
set h=%TIME:~0,2%
set m=%TIME:~3,2%
set s=%TIME:~6,2%
rem Setting that the time must be plus 5 minutes
set /a "m2 = %m%+5"

rem Setting the vars with current time and future time and showing them
set currtime=%h%:%m%:%s%
set futuretime=%h%:%m2%:%s%
echo Current time: %currtime%
echo Future time: %futuretime%

rem Applying future time
time %futuretime%
echo Going in sleep for 10 seconds, i'll apply your current real time right after
PING localhost -n 10 >NUL
rem Applying previous time
time %currtime%
pause
