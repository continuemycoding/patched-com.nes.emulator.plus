@echo off

set apk=%1
set output=%apk:~0, -4%

java -jar C:\Users\Administrator\Desktop\repackage\apktool.jar d -f %apk% -o %output%

pause