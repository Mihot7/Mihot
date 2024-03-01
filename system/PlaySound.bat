@type PlaySound1.txt>PlaySound.vbs
@echo oPlayer.URL = %1 >> PlaySound.vbs
@type PlaySound2.txt>>PlaySound.vbs
@call PlaySound.vbs
@del PlaySound.vbs