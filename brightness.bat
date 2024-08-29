@ echo off

rem pushd C:\Program Files\Dell\Dell Display Manager 2

setlocal

if [%1] == "night" (
  set brightness=30
  set brightness_laptop=50
  set contrast=50
  set color=Cool
) else (
rem day
  set brightness=50
  set brightness_laptop=70
  set contrast=75
  set color=Cool
)

start ddm /readbrightnesslevel ^
  /readcontrastlevel ^
  /writebrightnesslevel %brightness% ^
  /writecontrastlevel %contrast% ^
  /writecolorpreset %color% ^
  /console start
rem Monitors

wmic /namespace:\\root\wmi ^
  path WmiMonitorBrightnessMethods ^
  where active=true ^
  call WmiSetBrightness Brightness=%brightness_laptop% Timeout=0
rem Laptop

endlocal

rem popd

rem https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d
