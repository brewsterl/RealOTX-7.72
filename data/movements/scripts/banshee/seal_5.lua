function onStepIn(cid, item, frompos, item2, topos) 
	playerpos = getPlayerPosition(cid) 
	novapos2 = {x = 32216, y = 31833, z = 15} 
	novapos3 = {x = 32217, y = 31840, z = 15}
	if item.actionid == 9012 then
		queststatus = getPlayerStorageValue(cid, 9012)
		if queststatus == -1 then
			getThingfromPos(playerpos) 
			setPlayerStorageValue(cid, 9012, 1)
			setPlayerStorageValue(cid, 9120, 1)
			doSummonCreature("Warlock", novapos2)
			doSummonCreature("Warlock", novapos3)
		end
		return false
	end

	return true
end
