# DeadSignalShadowsFix
A mod for the game Dead Signal that automatically changes shadows quality when you use the computer

## Why
In Dead Signal some cameras are so dark that is almost impossible to see anomalies, the solution is setting the Shadows to Low but if you se shadows to Low you can't see male Noir's shadow if he spawns in the bedroom or bathroom.

To avoid all of this you constantly need to pause the game and change settings everytime you sit at the desk or get up and going forward with in-game time you start doing that **a lot**.

## What
This mod automatically changes the Shadows setting to Low when you get on the computer and switches back to Ultra when you are about to get up. This means that you don't have to manually do it, you can avoid pausing the game and eventually even get the **Locked in** achievement

## Customization
With default settings you Shadows will be set to Low for the computer and High for the rest of the scenes, to change this you can open **main.lua** and change **MIN_SHADOWS_QUALITY** and **MAX_SHADOWS_QUALITY**. Just make sure to use the same format and to only change the number (keeping the quotes)

```lua
local MIN_SHADOWS_QUALITY = "0" -- "0" => Low, "1" => Medium, "2" => High, "3" => Ultra
local MAX_SHADOWS_QUALITY = "3" -- "0" => Low, "1" => Medium, "2" => High, "3" => Ultra
```

## What do you need

1) The latest **experimental** version of Unreal Engine 4/5 Scripting System available [HERE](https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/experimental-latest). You will need only UE4SS_v3.0.1.zip (filename may vary).
2) The contents of this repository

## How to install

1) Find the folder where you installed Dead Signal and extract the contents of UE4SS in **Dead Signal\DeadSignal\Binaries\Win64**
2) Extract the contents of this repository in the same path of step 1. In the end you should have this folder structure: Mods/ShadowsFix/Scripts
3) Open **mods.txt** in the newly created Mods folder and add this line: ```ShadowsFix : 1```

After this the mod is installed and will automatically load everytime you open the game

## DISCLAIMER

This mod is a fan-made project created for entertainment and customization purposes only. I am not affiliated with Reflect Studios, or any of the developers and publishers of Dead Signal. All original content, assets, and intellectual property related to Dead Signal remain the property of their respective owners. Use this mod at your own risk. I am not responsible for any issues, bugs, or damage it may cause to your game or system. Make sure to back up your files before installing. If requested by the original developers, I will remove or modify this mod accordingly.
