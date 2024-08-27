@ echo off

pushd C:\Program Files\Dell\Dell Display Manager 2

start ddm /readbrightnesslevel ^
  /readcontrastlevel ^
  /writebrightnesslevel 25 ^
  /writecontrastlevel 50 ^
  /writecolorpreset Cool ^
  /console start

popd

rem https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d