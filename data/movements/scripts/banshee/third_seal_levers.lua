function onStepIn(cid, item, pos)
	switch1pos = {x = 32220, y = 31842, z = 15, stackpos = 1}
	switch2pos = {x = 32220, y = 31843, z = 15, stackpos = 1}
	switch3pos = {x = 32220, y = 31844, z = 15, stackpos = 1}
	switch4pos = {x = 32220, y = 31845, z = 15, stackpos = 1}
	switch5pos = {x = 32220, y = 31846, z = 15, stackpos = 1}
	flamepos = {x = 32273, y = 31856, z = 15}
	getswitch1 = getThingfromPos(switch1pos)
	getswitch2 = getThingfromPos(switch2pos)
	getswitch3 = getThingfromPos(switch3pos)
	getswitch4 = getThingfromPos(switch4pos)
	getswitch5 = getThingfromPos(switch5pos)
	if item.actionid == 9018 and getswitch1.itemid == 1946 and getswitch2.itemid == 1946
		and getswitch3.itemid == 1946 and getswitch4.itemid == 1946 and getswitch5.itemid == 1946 then
		queststatus = getPlayerStorageValue(cid, 9018)
		if queststatus == -1 then
			doTeleportThing(cid, flamepos)
			setPlayerStorageValue(cid, 9018, 1)
			setPlayerStorageValue(cid, 9180, 1)
			doSendMagicEffect(getCreaturePosition(cid), 10)
		else
			pos.y = pos.y-2
			doTeleportThing(cid, pos)
			doSendMagicEffect(pos, 10)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You already did this seal.")
		end
		return false
	end

	return true
end
