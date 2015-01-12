
local name, addon = ...

--------------------------------------------------------------------------------
-- Locals
--

local tostring = tostring
local format = format
addon.SendMessage = BigWigsLoader.SendMessage

--------------------------------------------------------------------------------
-- Localization
--


--------------------------------------------------------------------------------
-- Event Handlers
--

local path = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\%s.ogg"
local pathYou = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\%sy.ogg"
local function handler(event, module, key, sound, isOnMe)
	local success = PlaySoundFile(format(isOnMe and pathYou or path, tostring(key)), "Master")
	if not success then
		addon:SendMessage("BigWigs_Sound", module, key, sound) 
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler) 

--------------------------------------------------------------------------------
-- Sounds List
--

-- Use ✓ to signify if a sound exists for that ability and is optimal (high quality & full message)
-- Use / to signify if a sound exists for that ability but is not optimal (low quality or full message not spoken)
-- Use X to signify that a sound doesn't exist, but you think that the ability shouldn't have/need one

----Kargath Bladefist
--[[ Mythic ]]--
--X--	-9396, -- Ravenous Bloodmaw
--✓--	162497, -- On the Hunt on you //isOnMe
--✓--	"arena_sweeper", -- Arena Sweeper incoming
--[[ General ]]--
--X--	-9394, -- Fire Pillar
--✓--	159113, -- Impale on tank
--✓--	159113, -- Impale on you //isOnMe
--X--	159250, -- Blade Dance
--✓--	158986, -- Berserker Rush on you //isOnMe
--✓--	159947, -- Chain Hurl incoming
--✓--	159413, -- Mauling Brew under you
--✓--	159311, -- Flame Jet under you
--✓--	160521, -- Vile Breath

----The Butcher
--[[ Mythic ]] --
--X--	-10228, -- Night-Twisted Cadaver
--✓--	163046, -- Pale Vitriol under you
--[[ General ]]--
--✓--	156151, -- Tenderizer on tank
--X--	156157, -- Cleave
--✓--	156152, -- Gushing Wounds
--✓--	-8860, -- Bounding Cleave
--✓--	"frenzy", -- Frenzy

----Tectus
--[[ Night-Twisted Earthwarper ]]--
--✓--	162894, -- Gift of Earth
--✓--	162892, -- Petrification on you //isOnMe
--✓--	162968, -- Earthen Flechettes
--[[ Night-Twisted Berserker ]]--
--X--	163312, -- Raving Assault
--[[ General ]]--
--X--	162288, -- Accretion
--✓--	162346, -- Barrage under you //isOnMe
--✓--	162475, -- Tectonic Upheaval
--✓--	"adds", -- Add Spawned

----Brackenspore
--[[ Mythic ]]--
--X--	163755, -- Call of the Tides
--X--	163794, -- Exploding Fungus
--X--	"mythic_ability",
--[[ Hostile Fungus ]]--
----	"spore_shooter", -- Small Adds
----	"mind_fungus", -- Mind Fungus
----	"flesh_eater", -- Big Add
--✓--	160013, -- Decay casting
--[[ Beneficial Mushrooms ]]--
----	"living_mushroom", -- Living Mushroom
----	"rejuvenating_mushroom", -- Rejuvinating Mushroom
--[[ General ]]--
----	164125, -- Healing
----	163241, -- Rot on tank
----	159219, -- Necrotic Breath
--✓--	159996, -- Infesting Spores

----Twin Ogron
--[[ Mythic ]]--
--X--	163297, -- Arcane Twisted
--X--	163372, -- Arcane Volatility
----	"volatility_self", -- Arcane Volatility on you
--X--	"custom_off_volatility_marker",
--[[ Pol ]]--
--X--	143834, -- Shield Bash
--✓--	158134, -- Shield Charge
----	158093, -- Interrupting Shout
----	158385, -- Pulverize
--[[ Phemos ]]--
--X--	158521, -- Double Slash
--X--	167200, -- Arcane Wound
----	157943, -- Whirlwind Arcane
--✓--	158057, -- Enfeebling Roar
----	158200, -- Quake incoming
----	158241, -- Blaze under you

----Ko'ragh
----	--[[ Mythic ]]--
----	163472, -- Dominating Power
----	172895, -- Expel Magic: Fel
----	"custom_off_fel_marker",
----	--[[ General ]]--
----	161242, -- Caustic Energy
----	161612, -- Overwhelming Energy
----	160734, -- Vulnerability
----	{161328, "SAY", "FLASH"}, -- Suppression Field
----	{162184, "HEALER"}, -- Expel Magic: Shadow
----	{162185, "PROXIMITY"}, -- Expel Magic: Fire
----	{162186, "TANK", "ICON", "FLASH", "SAY"}, -- Expel Magic: Arcane
----	172747, -- Expel Magic: Frost
----	"bosskill"

----Imperator Mar'gok
----	--[[ Imperator Mar'gok ]]--
----	{159515, "TANK"}, -- Accelerated Assault
----	156238, -- Arcane Wrath
----	{156225, "ICON", "PROXIMITY", "SAY", "ME_ONLY"}, -- Branded
----	156467, -- Destructive Resonance
----	156471, -- Summon Arcane Aberration
----	{158605, "ICON", "PROXIMITY", "FLASH", "SAY"}, -- Mark of Chaos
----	157349, -- Force Nova
----	--[[ Intermission ]]--
----	"volatile_anomaly",
----	--[[ Gorian Warmage ]]--
----	{157801, "DISPEL"}, -- Slow
----	{157763, "PROXIMITY", "FLASH"}, -- Fixate
----	"custom_off_fixate_marker",
----	--[[ Gorian Reaver ]]--
----	{158553, "TANK"}, -- Crush Armor
----	{158563, "TANK"}, -- Kick to the Face
----	--[[ General ]]--
----	"stages",
----	"bosskill"

