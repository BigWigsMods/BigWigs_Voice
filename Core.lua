
local name, addon = ...

--------------------------------------------------------------------------------
-- Locals
--

local tostring = tostring
local format = format

--------------------------------------------------------------------------------
-- Localization
--


--------------------------------------------------------------------------------
-- Event Handlers
--
--

local path = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\%s.ogg"
local function handler(event, key)
	local success = PlaySoundFile(format(path, tostring(key)), "Master")
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler) 
