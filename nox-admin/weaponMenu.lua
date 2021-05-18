local menu = MenuV:CreateMenu('Weapon', 'Weapon Menu', 'topright', 135, 0, 255, 'size-150', 'native', 'menuv', 'admin_namespace')

--Menus

local melee = menu:AddSlider({ icon = '', label = 'Melee', value = true, values = {
    { label = 'Dagger', value = 'weapon_dagger', description = 'Give Dagger' },
    { label = 'Bat', value = 'weapon_bat', description = 'Give Bat' },
    { label = 'Bottle', value = 'weapon_bottle', description = 'Give Bottle' },
    { label = 'Crowbar', value = 'weapon_crowbar', description = 'Give Crowbar' },
    { label = 'Flashlight', value = 'weapon_flashlight', description = 'Give Flashlight' },
    { label = 'Golf Club', value = 'weapon_golfclub', description = 'Give Golf Club' },
    { label = 'Hammer', value = 'weapon_hammer', description = 'Give Hammer' },
    { label = 'Hatchet', value = 'weapon_hatchet', description = 'Give Hatchet' },
    { label = 'Brass Knuckles', value = 'weapon_knuckle', description = 'Give Brass Knuckles' },
    { label = 'Knife', value = 'weapon_knife', description = 'Give Knife' },
    { label = 'Machete', value = 'weapon_machete', description = 'Give Machete' },
    { label = 'Switchblade', value = 'weapon_switchblade', description = 'Give Switchblade' },
    { label = 'Nightstick', value = 'weapon_nightstick', description = 'Give Nightstick' },
    { label = 'Wrench', value = 'weapon_wrench', description = 'Give Wrench' },
    { label = 'Battle Axe', value = 'weapon_battleaxe', description = 'Give Battle Axe' },
    { label = 'Pool Cue', value = 'weapon_poolcue', description = 'Give Pool Cue' },
    { label = 'Stone Hatchet', value = 'weapon_stone_hatchet', description = 'Give Stone Hatchet' }
}})

local handguns = menu:AddSlider({ icon = '', label = 'Handguns', value = true, values = {
    { label = 'Pistol', value = weapon_pistol, description = 'Give Pistol' },
    { label = 'Pistol Mk II', value = weapon_pistol_mk2, description = 'Give Pistol Mk II' },
    { label = 'Combat Pistol', value = weapon_combatpistol, description = 'Give Combat Pistol' },
    { label = 'AP Pistol', value = weapon_appistol, description = 'Give AP Pistol' },
    { label = 'Stun Gun', value = weapon_stungun, description = 'Give Stun Gun' },
    { label = 'Pistol .50', value = weapon_pistol50, description = 'Give Pistol .50' },
    { label = 'SNS Pistol', value = weapon_snspistol, description = 'Give SNS Pistol' },
    { label = 'SNS Pistol Mk II', value = weapon_snspistol_mk2, description = 'Give SNS Pistol Mk II' },
    { label = 'Heavy Pistol', value = weapon_heavypistol, description = 'Give Heavy Pistol' },
    { label = 'Vintage Pistol', value = weapon_vintagepistol, description = 'Give Vintage Pistol' },
    { label = 'Flare Gun', value = weapon_flaregun, description = 'Give Flare Gun' },
    { label = 'Marksman Pistol', value = weapon_marksmanpistol, description = 'Give Marksman Pistol' },
    { label = 'Heavy Revolver', value = weapon_revolver, description = 'Give Heavy Revolver' },
    { label = 'Heavy Revolver Mk II', value = weapon_revolver_mk2, description = 'Give Heavy Revolver Mk II' },
    { label = 'Double Action Revolver', value = weapon_doubleaction, description = 'Give Double Action Revolver' },
    { label = 'Up-n-Atomizer', value = weapon_raypistol, description = 'Give Up-n-Atomizer' },
    { label = 'Ceramic Pistol', value = weapon_ceramicpistol, description = 'Give Ceramic Pistol' },
    { label = 'Navy Revolver', value = weapon_navyrevolver, description = 'Give Navy Revolver' },
    { label = 'Perico Pistol', value = weapon_gadgetpistol, description = 'Give Perico Pistol' }
}})

local submachine = menu:AddSlider({ icon = '', label = 'Submachine', value = true, values = {
    { label = 'Micro SMG', value = weapon_microsmg, description = 'Give Micro SMG' },
    { label = 'SMG', value = weapon_smg, description = 'Give SMG' },
    { label = 'SMG Mk II', value = weapon_smg_mk2, description = 'Give SMG Mk II' },
    { label = 'Assault SMG', value = weapon_assaultsmg, description = 'Give Assault SMG' },
    { label = 'Combat PDW', value = weapon_combatpdw, description = 'Give Combat PDW' },
    { label = 'Machine Pistol', value = weapon_machinepistol, description = 'Give Machine Pistol' },
    { label = 'Mini SMG', value = weapon_minismg, description = 'Give Mini SMG' },
    { label = 'Unholy Hellbringer', value = weapon_raycarbine, description = 'Give Unholy Hellbringer' }
}})

local shotguns = menu:AddSlider({ icon = '', label = 'Shotguns', value = true, values = {
    { label = 'Pump Shotgun', value = weapon_pumpshotgun, description = 'Give Pump Shotgun' },
    { label = 'Pump Shotgun Mk II', value = weapon_pumpshotgun_mk2, description = 'Give Pump Shotgun Mk II' },
    { label = 'Sawed-Off Shotgun', value = weapon_sawnoffshotgun, description = 'Give Sawed-Off Shotgun' },
    { label = 'Assault Shotgun', value = weapon_assaultshotgun, description = 'Give Assault Shotgun' },
    { label = 'Bullpup Shotgun', value = weapon_bullpupshotgun, description = 'Give Bullpup Shotgun' },
    { label = 'Musket', value = weapon_musket, description = 'Give Musket' },
    { label = 'Heavy Shotgun', value = weapon_heavyshotgun, description = 'Give Heavy Shotgun' },
    { label = 'Double Barrel Shotgun', value = weapon_dbshotgun, description = 'Give Double Barrel Shotgun' },
    { label = 'Sweeper Shotgun', value = weapon_autoshotgun, description = 'Give Sweeper Shotgun' },
    { label = 'Combat Shotgun', value = weapon_combatshotgun, description = 'Give Combat Shotgun' }
}})

local assrifle = menu:AddSlider({ icon = '', label = 'Assault Rifles', value = true, values = {
    { label = 'Assault Rifle', value = weapon_assaultrifle, description = 'Give Assault Rifle' },
    { label = 'Assault Rifle Mk II', value = weapon_assaultrifle_mk2, description = 'Give Assault Rifle Mk II' },
    { label = 'Carbine Rifle', value = weapon_carbinerifle, description = 'Give Carbine Rifle' },
    { label = 'Carbine Rifle Mk II', value = weapon_carbinerifle_mk2, description = 'Give Carbine Rifle Mk II' },
    { label = 'Advanced Rifle', value = weapon_advancedrifle, description = 'Give Advanced Rifle' },
    { label = 'Special Carbine', value = weapon_specialcarbine, description = 'Give Special Carbine' },
    { label = 'Special Carbine Mk II', value = weapon_specialcarbine_mk2, description = 'Give Special Carbine Mk II' },
    { label = 'Bullpup Rifle', value = weapon_bullpuprifle, description = 'Give Bullpup Rifle' },
    { label = 'Bullpup Rifle Mk II', value = weapon_bullpuprifle_mk2, description = 'Give Bullpup Rifle Mk II' },
    { label = 'Compact Rifle', value = weapon_compactrifle, description = 'Give Compact Rifle' },
    { label = 'Military Rifle', value = weapon_militaryrifle, description = 'Give Military Rifle' }
}})

local lmgs = menu:AddSlider({ icon = '', label = 'Light Machine Guns', value = true, values = {
    { label = 'MG', value = weapon_mg, description = 'Give MG' },
    { label = 'Combat MG', value = weapon_combatmg, description = 'Give Comabt MG' },
    { label = 'Combat MG Mk II', value = weapon_combatmg_mk2, description = 'Give Combat MG Mk II' },
    { label = 'Gusenberg Sweeper', value = weapon_gusenberg, description = 'Give Gusenberg Sweeper' }
}})

local snipers = menu:AddSlider({ icon = '', label = 'Weapons', value = true, values = {
    { label = 'Sniper Rifle', value = weapon_sniperrifle, description = 'Give Sniper Rifle' },
    { label = 'Heavy Sniper', value = weapon_heavysniper, description = 'Give Heavy Sniper' },
    { label = 'Heavy Sniper Mk II', value = weapon_heavysniper_mk2, description = 'Give Heavy Sniper Mk II' },
    { label = 'Marksman Rifle', value = weapon_marksmanrifle, description = 'Give Marksman Rifle' },
    { label = 'Marksman Rifle Mk II', value = weapon_marksmanrifle_mk2, description = 'Give Marksman Rifle Mk II' }
}})

local heavyweapons = menu:AddSlider({ icon = '', label = 'Heavy Weapons', value = true, values = {
    { label = 'RPG', value = weapon_rpg, description = 'Give RPG' },
    { label = 'Grenade Launcher', value = weapon_grenadelauncher, description = 'Give Grenade Launcher' },
    { label = 'Grenade Launcher Smoke', value = weapon_grenadelauncher_smoke, description = 'Give Grenade Launcher Smoke' },
    { label = 'Minigun', value = weapon_minigun, description = 'Give Minigun' },
    { label = 'Firework Launcher', value = weapon_firework, description = 'Give Firework Launcher' },
    { label = 'Railgun', value = weapon_railgun, description = 'Give Railgun' },
    { label = 'Homing Launcher', value = weapon_hominglauncher, description = 'Give Homing Launcher' },
    { label = 'Compact Grenade Launcher', value = weapon_compactlauncher, description = 'Give Compact Grenade Launcher' },
    { label = 'Widowmaker', value = weapon_rayminigun, description = 'Give Widowmaker' }
}})

local throwables = menu:AddSlider({ icon = '', label = 'Throwables', value = true, values = {
    { label = 'Grenade', value = weapon_grenade, description = 'Give Grenade' },
    { label = 'BZ Gas', value = weapon_bzgas, description = 'Give BZ Gas' },
    { label = 'Molotov Cocktail', value = weapon_molotov, description = 'Give Molotov Cocktail' },
    { label = 'Sticky Bomb', value = weapon_stickbomb, description = 'Give Sticky Bommb' },
    { label = 'Proximity Mines', value = weapon_proxmine, description = 'Give Proximity Mines' },
    { label = 'Snowballs', value = weapon_snowball, description = 'Give Snowballs' },
    { label = 'Pipe Bombs', value = weapon_pipebomb, description = 'Give Pipe Bombs' },
    { label = 'Baseball', value = weapon_ball, description = 'Give Baseball' },
    { label = 'Tear Gas', value = weapon_smokegrenade, description = 'Give Tear Gas' },
    { label = 'Flare', value = weapon_flare, description = 'Give Flare' }
}})

local misc = menu:AddSlider({ icon = '', label = 'Misc', value = true, values = {
    { label = 'Jerry Can', value = weapon_petrolcan, description = 'Give Jerry Can' },
    { label = 'Parachute', value = gadget_parachute, description = 'Give Parachute' },
    { label = 'Fire Extinguisher', value = weapon_fireextinguisher, description = 'Give Fire Extinguisher' },
    { label = 'Hazardous Jerry Can', value = weapon_hazardcan, description = 'Give Hazardous Jerry Can' }
}})

local clearloadout = menu:AddButton({ label = 'Clear Loadout'})
--Weapon declarations
---melee 17
melee:On('select', function(melee, weapon_dagger)
    GiveWeaponToPed(GetPlayerPed(-1), 0x92A27487, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_bat)
    GiveWeaponToPed(GetPlayerPed(-1), 0x958A4A8F, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_bottle)
    GiveWeaponToPed(GetPlayerPed(-1), 0xF9E6AA4B, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_crowbar)
    GiveWeaponToPed(GetPlayerPed(-1), 0x84BD7BFD, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_flashlight)
    GiveWeaponToPed(GetPlayerPed(-1), 0x8BB05FD7, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_golfclub)
    GiveWeaponToPed(GetPlayerPed(-1), 0x440E4788, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_hammer)
    GiveWeaponToPed(GetPlayerPed(-1), 0x4E875F73, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_hatchet)
    GiveWeaponToPed(GetPlayerPed(-1), 0xF9DCBF2D, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_knuckle)
    GiveWeaponToPed(GetPlayerPed(-1), 0xD8DF3C3C, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_knife)
    GiveWeaponToPed(GetPlayerPed(-1), 0x99B507EA, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_machete)
    GiveWeaponToPed(GetPlayerPed(-1), 0xDD5DF8D9, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_switchblade)
    GiveWeaponToPed(GetPlayerPed(-1), 0xDFE37640, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_nightstick)
    GiveWeaponToPed(GetPlayerPed(-1), 0x678B81B1, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_wrench)
    GiveWeaponToPed(GetPlayerPed(-1), 0x19044EE0, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_battleaxe)
    GiveWeaponToPed(GetPlayerPed(-1), 0xCD274149, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_poolcue)
    GiveWeaponToPed(GetPlayerPed(-1), 0x94117305, 250, false, true)
    notify("Weapon spawned")
end)
melee:On('select', function(melee, weapon_stone_hatchet)
    GiveWeaponToPed(GetPlayerPed(-1), 0x3813FC08, 250, false, true)
    notify("Weapon spawned")
end)

---handguns 19
handguns:On('select', function(handguns, weapon_pistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0x1B06D571, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_pistol_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0xBFE256D4, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_combatpistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0x5EF9FEC4, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_appistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0x22D8FE39, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_stungun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x3656C8C1, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_pistol50)
    GiveWeaponToPed(GetPlayerPed(-1), 0x99AEEB3B, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_snspistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0xBFD21232, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_snspistol_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x88374054, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_heavypistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0xD205520E, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_vintagepistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0x83839C4, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_flaregun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x47757124, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_marksmanpistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0xDC4DB296, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_revolver)
    GiveWeaponToPed(GetPlayerPed(-1), 0xC1B3C3D1, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_revolver_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0xCB96392F, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_doubleaction)
    GiveWeaponToPed(GetPlayerPed(-1), 0x97EA20B8, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_raypistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0xAF3696A1, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_ceramicpistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0x2B5EF5EC, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_navyrevolver)
    GiveWeaponToPed(GetPlayerPed(-1), 0x917F6C8C, 250, false, true)
    notify("Weapon spawned")
end)
handguns:On('select', function(handguns, weapon_gadgetpistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0x57A4368C, 250, false, true)
    notify("Weapon spawned")
end)

---submachine 8
submachine:On('select', function(submachine, weapon_microsmg)
    GiveWeaponToPed(GetPlayerPed(-1), 0x13532244, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_smg)
    GiveWeaponToPed(GetPlayerPed(-1), 0x2BE6766B, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_smg_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x78A97CD0, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_assaultsmg)
    GiveWeaponToPed(GetPlayerPed(-1), 0xEFE7E2DF, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_combatpdw)
    GiveWeaponToPed(GetPlayerPed(-1), 0x0A3D4D34, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_machinepistol)
    GiveWeaponToPed(GetPlayerPed(-1), 0xDB1AA450, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_minismg)
    GiveWeaponToPed(GetPlayerPed(-1), 0xBD248B55, 250, false, true)
    notify("Weapon spawned")
end)
submachine:On('select', function(submachine, weapon_raycarbine)
    GiveWeaponToPed(GetPlayerPed(-1), 0x476BF155, 250, false, true)
    notify("Weapon spawned")
end)

---shotguns 10
shotguns:On('select', function(shotguns, weapon_pumpshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x1D073A89, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_pumpshotgun_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x555AF99A, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_sawnoffshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x7846A318, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_assaultshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0xE284C527, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_bullpupshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x9D61E50F, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_musket)
    GiveWeaponToPed(GetPlayerPed(-1), 0xA89CB99E, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_heavyshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x3AABBBAA, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_dbshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0xEF951FBB, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_autoshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x12E82D3D, 250, false, true)
    notify("Weapon spawned")
end)
shotguns:On('select', function(shotguns, weapon_combatshotgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x5A96BA4, 250, false, true)
    notify("Weapon spawned")
end)

---assrifle 11
assrifle:On('select', function(assrifle, weapon_assaultrifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0xBFEFFF6D, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_assaultrifle_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x394F415C, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_carbinerifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0x83BF0278, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_carbinerifle_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0xFAD1F1C9, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_advancedrifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0xAF113F99, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_specialcarbine)
    GiveWeaponToPed(GetPlayerPed(-1), 0xC0A3098D, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_specialcarbine_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x969C3D67, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_bullpuprifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0x7F229F94, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_bullpuprifle_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x84D6FAFD, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_compactrifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0x624FE830, 250, false, true)
    notify("Weapon spawned")
end)
assrifle:On('select', function(assrifle, weapon_militaryrifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0x9D1F17E6, 250, false, true)
    notify("Weapon spawned")
end)

---lmgs 4
lmgs:On('select', function(lmgs, weapon_mg)
    GiveWeaponToPed(GetPlayerPed(-1), 0x9D07F764, 250, false, true)
    notify("Weapon spawned")
end)
lmgs:On('select', function(lmgs, weapon_combatmg)
    GiveWeaponToPed(GetPlayerPed(-1), 0x7FD62962, 250, false, true)
    notify("Weapon spawned")
end)
lmgs:On('select', function(lmgs, weapon_combatmg_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0xDBBD7280, 250, false, true)
    notify("Weapon spawned")
end)
lmgs:On('select', function(lmgs, weapon_gusenberg)
    GiveWeaponToPed(GetPlayerPed(-1), 0x61012683, 250, false, true)
    notify("Weapon spawned")
end)

---snipers 5
snipers:On('select', function(snipers, weapon_sniperrifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0x05FC3C11, 250, false, true)
    notify("Weapon spawned")
end)
snipers:On('select', function(snipers, weapon_heavysniper)
    GiveWeaponToPed(GetPlayerPed(-1), 0x0C472FE2, 250, false, true)
    notify("Weapon spawned")
end)
snipers:On('select', function(snipers, weapon_heavysniper_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0xA914799, 250, false, true)
    notify("Weapon spawned")
end)
snipers:On('select', function(snipers, weapon_marksmanrifle)
    GiveWeaponToPed(GetPlayerPed(-1), 0xC734385A, 250, false, true)
    notify("Weapon spawned")
end)
snipers:On('select', function(snipers, weapon_marksmanrifle_mk2)
    GiveWeaponToPed(GetPlayerPed(-1), 0x6A6C02E0, 250, false, true)
    notify("Weapon spawned")
end)

---heavyweapons 9
heavyweapons:On('select', function(heavyweapons, weapon_rpg)
    GiveWeaponToPed(GetPlayerPed(-1), 0xB1CA77B1, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_grenadelauncher)
    GiveWeaponToPed(GetPlayerPed(-1), 0xA284510B, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_grenadelauncher_smoke)
    GiveWeaponToPed(GetPlayerPed(-1), 0x4DD2DC56, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_minigun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x42BF8A85, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_firework)
    GiveWeaponToPed(GetPlayerPed(-1), 0x7F7497E5, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_railgun)
    GiveWeaponToPed(GetPlayerPed(-1), 0x6D544C99, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_hominglauncher)
    GiveWeaponToPed(GetPlayerPed(-1), 0x63AB0442, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_compactlauncher)
    GiveWeaponToPed(GetPlayerPed(-1), 0x0781FE4A, 250, false, true)
    notify("Weapon spawned")
end)
heavyweapons:On('select', function(heavyweapons, weapon_rayminigun)
    GiveWeaponToPed(GetPlayerPed(-1), 0xB62D1F67, 250, false, true)
    notify("Weapon spawned")
end)

---throwables 10
throwables:On('select', function(throwables, weapon_grenade)
    GiveWeaponToPed(GetPlayerPed(-1), 0x93E220BD, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_bzgas)
    GiveWeaponToPed(GetPlayerPed(-1), 0xA0973D5E, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_molotov)
    GiveWeaponToPed(GetPlayerPed(-1), 0x24B17070, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_stickbomb)
    GiveWeaponToPed(GetPlayerPed(-1), 0x2C3731D9, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_proxmine)
    GiveWeaponToPed(GetPlayerPed(-1), 0xAB564B93, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_snowball)
    GiveWeaponToPed(GetPlayerPed(-1), 0x787F0BB, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_pipebomb)
    GiveWeaponToPed(GetPlayerPed(-1), 0xBA45E8B8, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_ball)
    GiveWeaponToPed(GetPlayerPed(-1), 0x23C9F95C, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_smokegrenade)
    GiveWeaponToPed(GetPlayerPed(-1), 0xFDBC8A50, 250, false, true)
    notify("Weapon spawned")
end)

throwables:On('select', function(throwables, weapon_flare)
    GiveWeaponToPed(GetPlayerPed(-1), 0x497FACC3, 250, false, true)
    notify("Weapon spawned")
end)

---misc 4
misc:On('select', function(misc, weapon_petrolcan)
    GiveWeaponToPed(GetPlayerPed(-1), 0x34A67B97, 250, false, true)
    notify("Weapon spawned")
end)

misc:On('select', function(misc, gadget_parachute)
    GiveWeaponToPed(GetPlayerPed(-1), 0xFBAB5776, 250, false, true)
    notify("Weapon spawned")
end)

misc:On('select', function(misc, weapon_fireextinguisher)
    GiveWeaponToPed(GetPlayerPed(-1), 0x060EC506, 250, false, true)
    notify("Weapon spawned")
end)

misc:On('select', function(misc, weapon_hazardcan)
    GiveWeaponToPed(GetPlayerPed(-1), 0xBA536372, 250, false, true)
    notify("Weapon spawned")
end)

--clearloadout
clearloadout:On('select', function(i)
    RemoveAllPedWeapons(GetPlayerPed(-1), p1)
end)

--Command stuffs

RegisterCommand("weapon", function()
    MenuV:OpenMenu(menu)
    notify("Weapon Menu")
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end