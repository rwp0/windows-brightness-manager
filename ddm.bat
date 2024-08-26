@echo off

cd C:\Program Files\Dell\Dell Display Manager 2

ddm /readbrightnesslevel ^
  /readcontrastlevel ^
  /writebrightnesslevel 25 ^
  /writecontrastlevel 50 ^
  /console start
