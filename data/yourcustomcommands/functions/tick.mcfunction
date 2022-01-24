# Here is where you create your custom commands:
#
# Every command you want added will have 3 lines like these:
#   scoreboard players enable @a COMMAND-ALIAS
#   execute as @a[scores={COMMAND-ALIAS=1..}] run COMMANDS-TO-RUN
#   scoreboard players set @a COMMAND-ALIAS 0
#
# You need to replace the COMMAND-ALIAS from all the 3 lines.
# If you don't your command will break.
# Add these 3 lines as many times as commands you want to add and replace the aliases.
# 
# A command alias is a shorthand for another command,
# for example /tp is the alias for /teleport. They do the same thing.
# With this datapack you can make any alias for any command or chains of commands
# In the example command "customCommandExample" is alias for "/say "test command""
#
# In game, to use commands we use a "/" before every command, for example:
# "/gamemode survival", but inside a datapack we don't use "/" before commands, so we will use
# "gamemode survival" instead. this is why the example command uses "run say "test command""
# instead of "run /say "test command"".
#
# You can alias any commands from the vanilla game and from mods if they are installed. To
# do so just type the command with your desired outcome after "run" from the second
# non-commented line 


# customCommandExample
scoreboard players enable @a customCommandExample
execute as @a[scores={customCommandExample=1..}] run say "test command"
scoreboard players set @a customCommandExample 0



# If we want to add other commands like or examples of goToBase, giveMeFood and
# doubleMyHearts we need to add the non commented 3 lines above over and over but we adjust
# the corresponding aliases and commands, for example to implement giveMeFood:
#
#   scoreboard players enable @a giveMeFood
#   execute as @a[scores={giveMeFood=1..}] run give @a minecraft:cooked_beef 64 
#   scoreboard players set @a giveMeFood 0
#
# If you add multiple commands your tick.mcfunction file may look like this:
#
#   # customCommandExample
#   scoreboard players enable @a customCommandExample
#   execute as @a[scores={customCommandExample=1..}] run say "test command"
#   scoreboard players set @a customCommandExample 0
#
#   # giveMeFood
#   scoreboard players enable @a giveMeFood
#   execute as @a[scores={giveMeFood=1..}] run give @a minecraft:cooked_beef 64 
#   scoreboard players set @a giveMeFood 0
# 
#   # goToBase
#   scoreboard players enable @a goToBase
#   execute as @a[scores={goToBase=1..}] run tp @a 10 20 30
#   scoreboard players set @a goToBase 0
# 
#   # doubleMyHearts
#   scoreboard players enable @a doubleMyHearts
#   execute as @a[scores={doubleMyHearts=1..}] run effect give @a minecraft:health_boost 999999 4 true
#   scoreboard players set @a doubleMyHearts 0
#
# To apply your custom commands restart your game or type "/reload" in game!




# If your command is too long or requires running multiple commands one after the other use
# the method below:
#
#   scoreboard players enable @a COMMAND-ALIAS
#   execute as @a[scores={COMMAND-ALIAS=1..}] run function yourcustomcommands:longcommand
#   scoreboard players set @a COMMAND-ALIAS 0
#
# The part that changes is "function yourcustomcommands:longcommand"
# Using function followed by yourcustomcommands:NAMEOFFUNCTION runs all the commands
# from said function.
# For example "function yourcustomcommands:longcommand" calls "longcommand.mcfunction"
# So all commands inside "longcommand.mcfunction" will be executed in order.
#
# inside "longcommand.mcfunction" we have this text:
#   say hello
#   say bye
#
# Therefore calling "function yourcustomcommands:longcommand" will execute the 1st
# command followed by the 2nd one. Witting in chat "hello" and then "bye".
#
# You can make your own functions, create a new file inside 
# yourCustomCommand\data\yourcustomcommands\functions
# and call it the name of your function followed by ".mcfunction"
#
# To make a custom command run your function add "function yourcustomcommands:YOURFUNCTION"
# As show on this example:
#   scoreboard players enable @a COMMAND-ALIAS
#   execute as @a[scores={COMMAND-ALIAS=1..}] run function yourcustomcommands:YOURFUNCTION
#   scoreboard players set @a COMMAND-ALIAS 0
#
# If you don't care for long commands or using functions
# you can just delete "longcommand.mcfunction"


