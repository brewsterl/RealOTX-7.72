function onStepIn(cid, item, frompos, item2, topos) 
	playerpos = getPlayerPosition(cid) 
	novapos = {x = 32261, y = 31856, z = 15} 
	switch1pos = {x = 32310, y = 31975, z = 13, stackpos = 1}
	switch2pos = {x = 32310, y = 31976, z = 13, stackpos = 1}
	switch3pos = {x = 32312, y = 31975, z = 13, stackpos = 1}
	switch4pos = {x = 32312, y = 31975, z = 13, stackpos = 1}
	switch5pos = {x = 32314, y = 31975, z = 13, stackpos = 1}
	switch6pos = {x = 32314, y = 31975, z = 13, stackpos = 1}
	getswitch1 = getThingfromPos(switch1pos)
	getswitch2 = getThingfromPos(switch2pos)
	getswitch3 = getThingfromPos(switch3pos)
	getswitch4 = getThingfromPos(switch4pos)
	getswitch5 = getThingfromPos(switch5pos)
	getswitch6 = getThingfromPos(switch6pos)
	if item.actionid == 9009 and
		getswitch1.itemid == 1946 and
		getswitch2.itemid == 1946 and
		getswitch3.itemid == 1946 and
		getswitch4.itemid == 1946 and
		getswitch5.itemid == 1945 and
		getswitch6.itemid == 1945 then
		queststatus = getPlayerStorageValue(cid, 9009)
		if queststatus == -1 then
			getThingfromPos(playerpos) 
			doSendMagicEffect(playerpos, 2) 
			doTeleportThing(cid, novapos) 
			doSendMagicEffect(novapos, 10)
			setPlayerStorageValue(cid, 9009, 1)
			setPlayerStorageValue(cid, 9900, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You already did this seal.")
		end
		return false
	end

	return true
end
