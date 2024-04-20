; u/fosf0r
; 2023/05/20

G91                      ; relative positioning
G1 Z+65.00 F2000         ; move up for safety
G90                      ; absolute positioning

M98 P"printwin.g"        ; disco LEDs
M98 P"printwin.g"        ; disco LEDs
M98 P"printwin.g"        ; disco LEDs
M98 P"printwin-unload.g" ; unload filament 100m

G1 X400 Y400 F18000      ; go to back right corner
M106 S0                  ; fans off
