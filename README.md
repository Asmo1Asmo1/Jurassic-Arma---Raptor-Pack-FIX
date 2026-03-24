# Steam Workshop
https://steamcommunity.com/sharedfiles/filedetails/?id=3690867324

# Jurassic Arma - Raptor Pack FIX
Fix for original mod 'Jurassic Arma - Raptor Pack' by Ruppertle and AppleCalypsoNow
Original: https://steamcommunity.com/sharedfiles/filedetails/?id=332909923

Changes:
- Fixed code errors on init and dino placement
- Fixed FSM errors to restore Raptor behaviour
- Fixed Raptor UI not being displayed
- Optimizations and refactoring

Known issues:
- Error spam in logs due to 'broken' animations - does not affect mod functionality
- Raptor can stuck in 'attacking mode' on unconscious unit, they will reset once either the victim or raptor dies

Known quirks:
- There are two types of Raptors: 'AI' for playing against and 'non-AI' for playing as. Pay attention to what type you place in Editor
- Raptors operate on 'nearTargets' command with 'isKindOf' filter, meaning they will attack every unit, even on their own side. I've added setting 'rup_raptor_targets_side' to fix that (e.g.: place into init field 'rup_raptor_targets_side = EAST;')
- For the same reason, they will not attack raptors from the opposite side - no fix for that as of now

About this fix:
- It is provided 'as is' and was made purely to fix the beautiful original mod, not to expand on it
- I do not own any rights to original mod and can not accept feature requests
- ACE: I don't play with ACE and can not add such compatibility as of now, sorry