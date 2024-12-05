#Requires AutoHotkey v2.0
; USEFUL INFORMATION
; 1280 x 960 4:3 resolution
; Change the last variables of the first two MouseClick commands as needed.
; Player 1 is the player at the top of the scoreboard of the team on top,
; and player 10 is the bottom fragger of the bottom team.
; Press esc before running the loop so the scoreboard stays enabled.
; When ready, press ctrl + x to start, then ctrl + a to stop.

global loopToggle := 0
global sleepTime := 30
pX1 := 1008 ; Report button next to players
pX2 := 850 ; Report reasons

p1 := 359,  p2 := 381, p3 := 403, p4 := 456, p5 := 477
p6 := 586, p7 := 611, p8 := 634, p9 := 656, p10 := 678
; Players 1 to 10

co := 373 ; Abusive comms
gr := 421 ; Griefing
wh := 467 ; Wall hack
ah := 520 ; Aim hack
oh := 565 ; Other hacking

^x:: {
    global loopToggle := 1
    while loopToggle {
        MouseClick("left", pX1, p1) ; This last variable (p1, p2, ..., p9, p10)
        Sleep sleepTime
        MouseClick("left", pX2, ah) ; This last variable too (co, gr, wh, ah, oh)
        Sleep sleepTime
        MouseClick("left", 814, 640) ; Submit button, don't change
        Sleep sleepTime
    }
}

#HotIf loopToggle
^a:: global loopToggle := 0
