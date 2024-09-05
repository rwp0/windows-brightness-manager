@ echo off

rem pushd C:\Program Files\Dell\Dell Display Manager 2

setlocal

echo You passed: %1

set color=Cool

if %1 == night (
  set brightness=25
  set brightness_laptop=50
  set contrast=50
) else (
    if %1 == day (
      set brightness=50
      set brightness_laptop=70
      set contrast=75
  ) else (
      set brightness=35
      set brightness_laptop=55
      set contrast=60
  )
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
  call WmiSetBrightness ^
    Brightness=%brightness_laptop% ^
    Timeout=0
rem Class:  https://learn.microsoft.com/en-us/windows/win32/wmicoreprov/wmimonitorbrightnessmethods
rem Method: https://learn.microsoft.com/en-us/windows/win32/wmicoreprov/wmisetbrightness-method-in-class-wmimonitorbrightnessmethods

endlocal

rem popd

rem https://gist.github.com/nebriv/cb934a3b702346c5988f2aba5ee39f0d
