
local addon = {}
addon.SendMessage = BigWigsLoader.SendMessage

--------------------------------------------------------------------------------
-- Event Handlers
--

local SoundHandler
do
	local path = "Interface\\AddOns\\BigWigs_Voice\\Sounds\\%s.ogg"
	local tostring = tostring
	local format = string.format
	function SoundHandler(_, module, key, sound)
		local success = PlaySoundFile(format(path, tostring(key)), "Master")
		if not success then
			addon:SendMessage("BigWigs_Sound", module, key, sound)
		end
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", SoundHandler)
BigWigsAPI.RegisterVoicePack("temp")
