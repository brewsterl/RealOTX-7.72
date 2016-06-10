function onStepIn(cid, item, pos)
	coin = {x = 33072, y = 32589 , z = 13, stackpos = 1}
	newpos = {x = 33080, y = 32589, z = 13}
	getcoin = getThingfromPos(coin)
	if item.actionid == 50116 and getcoin.itemid == 2159 then
		doTeleportThing(cid, newpos)
		doRemoveItem(getcoin.uid, 1)
		doSendMagicEffect(coin, 15)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	if item.actionid == 50117 then
		doTeleportThing(cid, {x = 33071, y = 32590, z = 13})
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	return true
end