@echo off

cd C:\Program Files\Dell\Dell Display Manager 2

ddm /readbrightnesslevel ^
  /readcontrastlevel ^
  /writebrightnesslevel 25 ^
  /writecontrastlevel 50 ^
  /console start
  

rem https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d