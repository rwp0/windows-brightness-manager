@ echo off

rem pushd C:\Program Files\Dell\Dell Display Manager 2

start ddm /readbrightnesslevel ^
  /readcontrastlevel ^
  /writebrightnesslevel 50 ^
  /writecontrastlevel 75 ^
  /writecolorpreset Cool ^
  /console start

rem popd

rem https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d