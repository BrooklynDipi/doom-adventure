@echo off

cd\
cd C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\trenchbroom\maps\Compiled


echo Copying Files...
copy C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\trenchbroom\maps\levelblockout.map C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\trenchbroom\maps\Compiled


echo Converting map...


echo --------------QBSP--------------
C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe levelblockout

echo --------------VIS---------------
C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe levelblockout

echo -------------LIGHT--------------
C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe levelblockout

copy levelblockout.bsp C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
copy levelblockout.pts C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
copy levelblockout.lit C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
pause
cd\
cd C:\Users\Brooklyn\Downloads\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master
quakespasm  +map levelblockout
