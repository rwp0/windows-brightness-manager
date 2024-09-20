param(
  [switch] $Night,
  [switch] $Day,
  [switch] $Middle
)

if ($Night) {
  $brightness = 25
  $contrast = 50
  $brightness_laptop=50
} elseif ($Day) {
  $brightness = 50
  $contrast = 70
  $brightness_laptop=75
} elseif ($Middle) {
  $brightness = 35
  $contrast = 55
  $brightness_laptop=60
} else {
  Write-Output 'Please specify an option'
}

ddm /readbrightnesslevel `
    /readcontrastlevel `
    /writebrightnesslevel $brightness `
    /writecontrastlevel $contrast `
    /writecolorpreset $color `
    /console start

$wmi = Get-WmiObject -Namespace root/WMI `
        -Class WmiMonitorBrightnessMethods

$wmi.WmiSetBrightness(1, $brightness_laptop)
