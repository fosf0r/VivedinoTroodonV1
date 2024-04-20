; troodon start gcode (for: PrusaSlicer, SuperSlicer, Slic3r, OrcaSlicer, Bambu Labs Slicer)
; u/fosf0r
; 2023/07/23

M98 P"ledwhite.g"                                             ; reset LED
M106 S0                                                       ; reset fan

M98 P"homeall.g"

G10 P{initial_extruder} S{first_layer_temperature[0]} R150    ; set nozzle temps
T0                                                            ; select tool with script run

M98 P"0:/macros/Go-PurgeZone.gcode"                           ; go to purge area
M98 P"ledorange.g"

; Start heating bed and wait to bed reach temp before proceeding
M190 S{first_layer_bed_temperature[0]}
M116                                                          ; wait for nozzle too
G4 S5                                                         ; wait 5 more seconds for good measure

M98 P"ledflashred.g"
M98 P"ledflashred.g"
M98 P"ledflashred.g"
G4 S2                                                         ; wait 2 seconds
M98 P"ledwhite.g"                                             ; reset LED

; Purge
M83                                                           ; relative extruder mode
G1 E200 F275                                                  ; purge
G1 E-1.0 F3275                                                ; retract slightly
M82                                                           ; absolute extruder mode
G92 E0                                                        ; e-reset
G4 S2                                                         ; wait 2 seconds
; flash because we're done and about to move the head
M98 P"ledflashgreen.g"
M98 P"ledflashgreen.g"
M98 P"ledflashgreen.g"
M98 P"ledwhite.g"                                             ; reset LED
G4 S3                                                         ; wait 3 seconds

; Done with purge + startup sequence.
