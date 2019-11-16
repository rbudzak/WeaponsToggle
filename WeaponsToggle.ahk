#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script sets one hotkey to toggle between Energy/Kinetic weapons, and another to toggle  between Power and last weapon used.

#IfWinActive Destiny 2 ; This should make it so the script only does anything in D2.

; defining the keybinds for each weapon type, make sure these match your in-game bindings
kinetic := "1"
energy := "2"
power := "3"

; defining the hotkeys themselves, the keys bound to your mouse
btnKE = NumpadDiv ; hotkey for switching between kinetic and energy
btnPP = NumpadMult ; hotkey for switching between power and previous

; defining state variables and giving them initial values
curr := energy
prev := kinetic
KEstates := [energy, kinetic]
PPstates := [prev, power]

; the hotkeys themselves
Hotkey,%btnKE%,SwitchKE

Hotkey,%btnPP%,SwitchPP

Hotkey,~%kinetic%,DirectKinetic

Hotkey,~%energy%,DirectEnergy

Hotkey,~%power%,DirectPower

; subroutines to be triggered by keypresses

SwitchKE: ; marks the current as the previous, swaps the KEstates array, marks the first item in the array as current and sends that keypress
prev := curr
KEstates := [KEstates[2], KEstates[1]]
curr := KEstates[1]
Send %curr%
return

SwitchPP: ; checks if current is power, if so, swaps to the previous, sets previous as power. Else, sets previous as the current, sets currents to pwoer, sends keypress
if (curr = power)
{
    curr := prev
    prev := power
}
else
{
    prev := curr
    curr := power
}
PPstates := [curr, prev]
Send %curr%
return

DirectKinetic:
prev := energy
curr := kinetic
KEstates := [kinetic, energy]
return

DirectEnergy:
prev := kinetic
curr := energy
KEstates := [energy, kinetic]
return

DirectPower:
if (curr != power)
{
    prev := curr
}
curr := power
PPstates := [power, prev]
return