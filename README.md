# APB Reloaded Config Loader
This is a simple batch script, similar to something TobiiDK had back in the day for selecting your config options. I will have this alongside my normal config, this should just make a bit easier for those that don't fully understand what they're doing and where they should be putting files.

> [!IMPORTANT]
> This config loader not compatible with my config that you have to manually install, nor is it compatible with anyone elses config so do not try to utilise it for anything other than what this loader comes with.

# Initial
Everything within this config is typically kept up to date with what LO will allow/disallow when it comes to modifying files so when I provide an update it's always recommended to download it and ensure you're up to date, older versions whilst still available shouldn't be used unless you know what you want out of them is allowed.

> [!IMPORTANT]
> If anything were to happen to your account due to use of modifed game files that is not my responsibility, you can contact Little Orbit support at **support@littleorbit.com**

# Install
Extract the archive you download from here to a folder somewhere on your PC. Run the batch script and provide it with your APB install location once that's done you can go through the options and select what you'd like to use.

>[!NOTE]
> It will warn you if your game is installed in Windows directories such as `Program Files (x86)` it can work, however some may run into issues so it's recommended to have APB installed in a different location e.g `Documents`.
> When the game updates you will have to reapply most of the config as the launcher overwrites modifications to most of the files, if something major changes it's recommended to also run the ***Repair*** option within the launcher to ensure all files are up to date.

# GC On + Streaming Off
- All of the social kiosks e.g clothing, vehicle, character, theme, symbol and vault work fine with these files
- Disables the texture streaming system forcing whichever graphics you start with to be the maximum you'll see without restarting (on most objects)
- Gained FPS varies per system

# GC Off Stutter Fix
- Some of the social kiosks e.g clothing, vehicle and character will not load with these files, the remaining studios, theme, symbol and vault do work however 
- Disables the texture streaming system forcing whichever graphics you start with to be the maximum you'll see without restarting (on most objects)
- Gained FPS varies per system
- You may experience large stutters on the respawn screen after a long time of being alive due to this now being when the garbage dump will happen

> [!IMPORTANT]
> If you find yourself frozen on the respawn screen for an extended period of time and either your team or the enemy progresses to the next stage of a mission you will not be able to see the new objective(s) when you respawn. This can also cause you to have ghost respawn circles appear on the map that when clicked do nothing. These bugs have no fixes without re-enabling garbage collection.

# Command Changes (If using localization)
- /exit -> /rq
- /dance variants -> /urban /michael /techno etc.
- /strikeapose1/2 -> /pose1 /pose2
- /groupinvitemodedefault -> /gimd (Run /gimd true on all characters when not in a group to set group invites to everyone.)

# Graphics
> [!NOTE]
> Shadows should work on all presets, if you want them just enable it under advanced graphics in-game after selecting the preset you like. If it doesn't work however, go into `APBMachineOptions` and remove the `DynamicShadows` and `LightEnvironmentShadows` lines, save, restart the game then re-enable shadows again.

> [!NOTE]
> If you wish to remove bullet holes, in `APBCompat` set  `ParticleMaxWorldSpaceArea` to a value of `0.1` and so that the nade trails aren't almost invisible ensure that `TEXCAT_VFX Usage 0 and 1` have their `MaxLODSize` set to `16` and their `LODBias` set to `4`. **You cannot see vehicle fire with ParticleMaxWorldSpaceArea set this way**

> [!IMPORTANT]
> When switching between clay vehicles and standard your game may crash therefore I recommend you do this on the login screen and then reboot.

### Mixed (Recommended for most people)
- MINIMAL	- Low Env, High Character, High Car, High Weapon, Mid Prop, Mid VFX
- LOW 		- Same as minimal just low poly characters
- MEDIUM 	- Mid Env, High Character, High Car, High Weapon, Mid Prop, Mid VFX
- HIGH 		- Same as medium just low poly characters
- MAXIMUM 	- High Env, High Character, High Car, High Weapon, High Prop, High VFX

### High
- MINIMAL	- Mid Env, High Character, High Car, High Weapon, Mid Prop, Mid VFX
- LOW 		- Same as minimal just low poly characters
- MEDIUM 	- High Env, High Character, High Car, High Weapon, High Prop, High VFX
- HIGH 		- Same as medium just low poly characters
- MAXIMUM 	- Same as medium but with further LOD ranges

### Low
- MINIMAL	- Low Env, High Character, High Car, High Weapon, Mid Prop, Mid VFX
- LOW 		- Same as minimal just low poly characters
- MEDIUM 	- Low Env, High Character, Clay Car, Low Weapon, Low Prop, Mid VFX
- HIGH 		- Same as medium just low poly characters
- MAXIMUM 	- Low Env, LQ Low Poly Character, Clay Car, Low Weapon, Low Prop, Low VFX

# Keybinds
All of the binds listed below are there as additions to the original keybinds so you have the choice rather than being forced to use one or the other. This just means that you will have to go to the respective keybind category and set which options you prefer.

> [!IMPORTANT]
> By default your game will be using the binds you had previously or if you're on a fresh account some binds will now be completely blank, simply go into Options > Controls and set them manually.

*Category listed at beginning*

   - Interface | Social Designers - This will only work in social but lets you bind a key to open the Clothing, Character, Vehicle, Symbol and Theme studios
   - Movement  | Crouch (New Hold) - Alternative method for hold to crouch that doesn't get stuck as it implements a jump before crouching
   - Driving   | Vehicle Special Function (Hold) - This allows you to hold the siren on rather than have it toggle, if it gets stuck hold the button whilst getting out of the car to reset it, or have a bind for toggle aswell
   - Combat    | Lean (Hold) - Hold down the lean key rather than have it toggle
   - Combat    | Primary/Secondary weapon - Allows you to set keys to select which weapon you want rather than cycle between them which is the default behaviour
   - Music     | Music Player Volume - Controls the volume of the music player in steps of 20
   - Camera    | Camera look up/down - Extremely fast but there if you really need it

*Default Xbox controller related keybinds are removed with this file*

# Manual Install
- Graphics: Place `APBCompat.ini` in `APBGame/Config`
- Keybinds: Place `APBGame` in the root `APB Reloaded` folder
- Localization: Place any `.GER` files within `APBGame/Localization/GER`, if the `GER` folder doesn't exist within `Localization` then you can just create it
- Ragdolls: (None = All ragdolls disabled | NoNPC = NPC ragdolls disabled, player ragdolls enabled | Norm = Player + NPC ragdolls enabled | MF = Muzzle flash on/off) Place `DefaultGame` in `APBGame/Config`
- Transparent UI: Place `DefaultUI` in `APBGame/Config`
- GCOff: (DC = Disk Cache. Off is preferred but if you have 16GB of RAM or less always use On) Place `APBGame` and `Engine` in the root `APB Reloaded` folder
- GCOn: (DC = Disk Cache. Off is preferred but if you have 16GB of RAM or less always use On) Place `APBGame` and `Engine` in the root `APB Reloaded` folder

# Remove / Uninstall

> [!IMPORTANT]
> If you wish to uninstall the config it is recommended that you run the `Repair` within the APB Launcher to get back to stock. Once the launcher has repaired, the only other thing you should need to do is go into `APBGame\Localization` and delete the `GER` folder, once that is done the config is completely removed.

# Credits

- Flaws :clown_face: - No ragdolls
- rooq :skull: - Mission descriptions
- Esurient :robot: - Engine related changes
- Leefekyn :sunglasses: - Alt mission titles
- mewpri :alien: - Studio keybinds / Vehicle+Weapon stats
- jmilos :japanese_goblin: - Combat / Vehicle keybinds
- myamai :space_invader: - Creating localization resources
- AltShadow :fox_face: - Weapon icons in UI elements

### [Flaws APB Config](https://github.com/flawsv/apb)

### [xaizone APB Config](https://github.com/xaizone/apb-reloaded)

### [myamai APB Localization Resources](https://myamai.neocities.org/apb/localization)

### [CLauncher](https://www.clauncher.io/)

### [APB Beginner's Guide by Flaws](https://steamcommunity.com/sharedfiles/filedetails/?id=1445306227)
