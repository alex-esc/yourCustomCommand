# This part adds all your custom commands via scoreboard triggers
# Add a line with "scoreboard objectives add COMMAND-ALIAS trigger" per command you want added
# Lines of code starting with "#" are comments for you to read and won't be seen by minecraft

scoreboard objectives add customCommandExample trigger

# Here is were you name your commands, above you can see that I named a custom command labeled
# "customCommandExample", so to use it in game we type "/trigger customCommandExample"
#
# Come up with a command name that is easy to remember, for example for a command that gives
# the player a stack of cooked beef you might want to use something like "giveMeFood"
# 
# In that case we need to add the following line after the lines starting with "#":
#
# scoreboard objectives add giveMeFood trigger
#
# Remember that lines with "#" are comments, so if you copy paste the line with the "#" at
# the front it will be ignored by mineraft, so remove the #'s when copy-pasting.
# 
# You can name multiple commands by adding multiple lines like this:
#
# scoreboard objectives add goToBase trigger
# scoreboard objectives add giveMeFood trigger
# scoreboard objectives add doubleMyHearts trigger
#
# That's how to name new commands, and you can remove commands by removing them from here.
#
# "customCommandExample" is an example command, you may remove it if you want.
# If you remove it and its still showing up in game you need to:
#   To remove a command type "/scoreboard objectives remove" in game followed by
#   the command you want to remove:
#   For example...
#   "/scoreboard objectives remove customCommandExample" removes "/trigger customCommandExample"
#
# Now that you have named all your commands and added them via this instructions you can move
# on into editing the tick.mcfunction file.
# See ya on tick.mcfunction!