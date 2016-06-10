function onStepIn(cid, item, pos)
	coin = {x = 33098, y = 32816, z = 13, stackpos = 1}
	newpos = {x = 33093, y = 32824, z = 13}
	getcoin = getThingfromPos(coin)
	if item.actionid == 50110 and getcoin.itemid == 2159 then
		doTeleportThing(cid, newpos)
		doRemoveItem(getcoin.uid, 1)
		doSendMagicEffect(coin, 15)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	if item.actionid == 50111 then
		doTeleportThing(cid, {x = 33097, y = 32815, z = 13})
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	return true
end