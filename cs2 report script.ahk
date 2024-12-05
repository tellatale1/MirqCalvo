#Requires AutoHotkey v2.0
; 1280 x 960 4:3 res
; Change the last variables of the first two Click commands as needed.
; Player 1 is the player at the top of the scoreboard of the team on top,
; and player 10 is the bottom fragger of the bottom team.
; Press esc before running the loop so the scoreboard stays enabled.
; When ready, press ctrl + 0 to start, then ctrl + a to stop.

pX1 := 1008 ; Report button next to players
pX2 := 850 ; Report reasons x value

p1 := 359 ; Player 1
p2 := 381 ; Player 2
p3 := 403 ; Player 3
p4 := 456 ; Player 4
p5 := 477 ; Player 5
p6 := 586 ; Player 6
p7 := 611 ; Player 7
p8 := 634 ; Player 8
p9 := 656 ; Player 9
p10 := 678 ; Player 10

co := 373 ; Abusive comms
gr := 421 ; Griefing
wh := 467 ; Wall hack
ah := 520 ; Aim hack
oh := 565 ; Other hacking

^a::Reload

^0:: Loop {
    Click pX1 p1 
    Click pX2 ah 
    Click 814 640 ; Submit button, don't change
}