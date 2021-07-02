:: Build sip
python configure.py -p win32-g++
make

COPY sipgen\sip.exe C:\Python38 /Y
COPY siplib\sip.pyd C:\Python38\Lib\site-packages /Y
COPY siplib\sip.h C:\Python38\include /Y

COPY sip.pyi C:\Python38\Lib\site-packages /Y
COPY sipconfig.py C:\Python38\Lib\site-packages /Y
COPY sipdistutils.py C:\Python38\Lib\site-packages /Y

pause