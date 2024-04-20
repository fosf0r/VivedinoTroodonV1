; here are some lines you should adjust in your config.g
M203 X18000 Y18000 Z1500 E3600 ; maximum speeds (feed rates) (mm/min)
M201 X5000 Y5000 Z400 E2000    ; set accelerations (mm/s^2).
M204 P5000 T5000               ; Set "print acceleration" and "travel acceleration"

; this will create the "{global.maxXYspeed}" variable:
if !exists(global.maxXYspeed) || global.maxXYspeed=null
	global maxXYspeed=18000
else 
	set global.maxXYspeed=18000
