function onUse(cid, item, frompos, item2, topos)
	demonpos1 = {x = 33061, y = 31622, z = 15}
	demonpos2 = {x = 33065, y = 31622, z = 15}
	demonpos3 = {x = 33061, y = 31628, z = 15}
	demonpos4 = {x = 33065, y = 31628, z = 15}
	if item.uid == 10023 then
		queststatus = getPlayerStorageValue(cid, 10023)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a bag.")
			bag = doPlayerAddItem(cid, 1987, 1)
			doAddContainerItem(bag, 2165, 1)
			doAddContainerItem(bag, 2151, 2)
			doAddContainerItem(bag, 2230, 1)
			doAddContainerItem(bag, 2229, 1)
			doAddContainerItem(bag, 1948, 1)
			item_uid = doAddContainerItem(bag, 2091, 1)
			doSetItemActionId(item_uid, 1505)
			setPlayerStorageValue(cid, 10023, 1)
			doSummonCreature("Demon", demonpos1) 
			doSummonCreature("Demon", demonpos2) 
			doSummonCreature("Demon", demonpos3) 
			doSummonCreature("Demon", demonpos4)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The wooden coffin is empty.")
		end
		return false
	end

	return true
end

