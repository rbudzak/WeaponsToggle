# WeaponsToggle
Destiny 2 Weapons Toggle AutoHotkey Script

This sets up two htokeys: One that toggles between kinetic and energy weapons, and another that switched between the power weapon and the previous weapon.

As currently set up, it assumes you're using the standard keybindings for the three slots: 1 for kinetic, 2 for enery, 3 for power. It binds Numpad / and Numpad * to Kinetic/Energy and Power/Previous respectively. Additionally, it recognizes if you've pressed one of the three keybindings and keeps track of the current and previous weapons chosen so it knows which to switch to.

I use this to assign two buttons on my mouse to these toggles, because I was tired of accidnetally switching to my (often empty) Power weapon when I really needed my Kinetic or Energy.

Usage example:
You've pressed "1" to switch to your Kinetic weapon. Pressing Numpad / will switch to Energy. Pressing it again will switch back to Kinetic. Pressing Numpad * will switch to Power. Pressing again will switch back to Kinetic. If, instead of pressing Numpad * again, you pressed Numpad /, you would switch to your Energy weapon.

In this way, no matter which weapon you have equipped, you will have two buttons to get you to each of the two other weapons, meaning you don't have to "duble click" either to get to what you need.

I'm sure some refactoring could be done here, and I have at least one improvement alreeady in mind, but it will have to wait for another day. 
