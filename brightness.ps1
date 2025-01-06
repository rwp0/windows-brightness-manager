param(
  [ switch ] $Night ,
  [ switch ] $Day ,
  [ switch ] $Middle
)

function set_brightness ( [ int ] $Brightness , [ int ] $Contrast , [ int ] $Laptop , [ string ] $Color = 'Cool' ) {

  ddm /readbrightnesslevel `
    /readcontrastlevel `
    /writebrightnesslevel $Brightness `
    /writecontrastlevel $Contrast `
    /writecolorpreset $Color `
    /console start

  $wmi = Get-WmiObject -Namespace root/WMI `
    -Class WmiMonitorBrightnessMethods

  $wmi.WmiSetBrightness( 1 , $Laptop )

}

if ( $Night ) {
  set_brightness -Brightness 25 -Contrast 50 -Laptop 30
} elseif ($Day) {
  set_brightness -Brightness 50 -Contrast 70 -Laptop 50
} elseif ($Middle) {
  set_brightness -Brightness 35  -Contrast 55  -Laptop 40
} else {
  $choice = Read-Host -Prompt 'Choice: '
  switch ( $choice ) {
    'night'  {
      set_brightness -Brightness 25 -Contrast 50 -Laptop 50 ; break
    }
    'day'    {
      set_brightness -Brightness 50 -Contrast 70 -Laptop 75 ; break
    }
    'middle' {
      set_brightness -Brightness 35  -Contrast 55  -Laptop 60 ; break
    }
    default  {
      Write-Output 'Please specify an option'
    }
  }
}
