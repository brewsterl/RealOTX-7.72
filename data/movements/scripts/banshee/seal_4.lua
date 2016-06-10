function onStepIn(cid, item, pos)
	splash = {x = 32243, y = 31892, z = 14, stackpos = 1}
	newpos = {x = 32261, y = 31849, z = 15}
	getsplash = getThingfromPos(splash)
	if item.actionid == 9011 and getsplash.itemid == 2025 then
		queststatus = getPlayerStorageValue(cid, 9009)
		if queststatus == -1 then
			doTeleportThing(cid, newpos)
			setPlayerStorageValue(cid, 9011, 1)
			setPlayerStorageValue(cid, 9110, 1)
			doRemoveItem(getsplash.uid, 1)
			doSendMagicEffect(splash, CONST_ME_MAGIC_RED)
			doSendMagicEffect(getCreaturePosition(cid), 10)
		else
			pos.x = pos.x-2
			doTeleportThing(cid, pos)
			doSendMagicEffect(pos, 10)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You already did this seal.")
		end

		return false
	end

	return true
end
