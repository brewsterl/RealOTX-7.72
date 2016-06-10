function onStepIn(cid, item, pos)
	newpos = {x = 32273, y = 31849, z = 15}
	if item.actionid == 9017 then
		doTeleportThing(cid, newpos)
		setPlayerStorageValue(cid, 9017, 1)
		setPlayerStorageValue(cid, 9170, 1)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	return true
end
