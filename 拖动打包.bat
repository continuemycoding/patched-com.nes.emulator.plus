@echo off

set output=%1

set apk_unsigned=%output%_unsigned.apk

java -jar apktool.jar b %output% -o %apk_unsigned%

: RMDIR /S /Q %output%

set apk_signed=%output%_signed.apk

: java -jar signapk\signapk.jar signapk\sinyeeandroid.x509.pem signapk\sinyeeandroid.pk8 %apk_unsigned% %apk_signed%
: jarsigner -digestalg SHA1 -sigalg MD5withRSA -tsa https://timestamp.geotrust.com/tsa -verbose -keystore release.keystore -storepass llq910215 -keypass llq664301573 -signedjar %apk_signed% %apk_unsigned% release
jarsigner -digestalg SHA1 -sigalg MD5withRSA -verbose -keystore release.keystore -storepass llq910215 -keypass llq664301573 -signedjar %apk_signed% %apk_unsigned% release

DEL %apk_unsigned%

adb install -r %apk_signed%

pause