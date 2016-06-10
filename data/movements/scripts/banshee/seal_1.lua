function onStepIn(cid, item, frompos, item2, topos) 
	playerpos = getPlayerPosition(cid) 
	novapos = {x = 32266, y = 31849, z = 15} 
	novapos2 = {x = 32274, y = 31902, z = 13} 
	novapos3 = {x = 32274, y = 31904, z = 13} 
	novapos4 = {x = 32276, y = 31902, z = 13} 
	if item.actionid == 9008 then 
		queststatus = getPlayerStorageValue(cid, 9008)
		if queststatus == -1 then
			getThingfromPos(playerpos) 
			doSendMagicEffect(playerpos, 2) 
			doTeleportThing(cid, novapos) 
			doSendMagicEffect(novapos, 10)
			setPlayerStorageValue(cid, 9008, 1)
			setPlayerStorageValue(cid, 9800, 1)
			doSummonCreature("Ghost", novapos2)
			doSummonCreature("Ghost", novapos3)
			doSummonCreature("Demon skeleton", novapos4)
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You already did the first seal.")
		end
		return false
	end

	return true
end