Citizen.CreateThread(function()
    while true do
        local playerName = GetPlayerName(PlayerId())
		-- Enter the maximum number of clients that can connect to the server
		local maxPlayers = GetConvarInt("sv_maxclients", 64) 
		
		-- Enter the Discord App ID (can be found from discord.com/developers/applications)
		SetDiscordAppId(804822789990514698)

		-- Enter the Discord Image Name (can be found in Discord Developer Portal > Rich Presence > Art Assets)
		SetDiscordRichPresenceAsset('logo')

		-- Set this to your hover over text (when someone hovers over your image, the text here will appear)
        SetDiscordRichPresenceAssetText("discord.gg/oceanstate")

		-- This is line 3, change the format if you wish, but I'd leave it the same.
        SetRichPresence("ID: " .. GetPlayerServerId(PlayerId()) .. " | " .. playerName .. " | " .. #GetActivePlayers() .. "/" .. tostring(maxPlayers))

		Citizen.Wait(60000)
	end
end)