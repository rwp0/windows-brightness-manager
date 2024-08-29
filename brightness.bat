@ echo off

rem pushd C:\Program Files\Dell\Dell Display Manager 2

setlocal

echo You passed: %1

if %1 == night (
  set brightness=25
  set brightness_laptop=50
  set contrast=50
  set color=Cool
) else (
  set brightness=50
  set brightness_laptop=70
  set contrast=75
  set color=Cool
)

rem Dell Monitors
start ddm /readbrightnesslevel ^
  /readcontrastlevel ^
  /writebrightnesslevel %brightness% ^
  /writecontrastlevel %contrast% ^
  /writecolorpreset %color% ^
  /console start

rem Laptop
wmic /namespace:\\root\wmi ^
  path WmiMonitorBrightnessMethods ^
  where active=true ^
  call WmiSetBrightness Brightness=%brightness_laptop% Timeout=0

endlocal

rem popd

rem https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d
