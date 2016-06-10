function onStepIn(cid, item, pos)
	coin = {x = 33276, y = 32553, z = 14, stackpos = 1}
	newpos = {x = 33271, y = 32553 , z = 14}
	getcoin = getThingfromPos(coin)
	if item.actionid == 50120 and getcoin.itemid == 2159 then
		doTeleportThing(cid, newpos)
		doRemoveItem(getcoin.uid, 1)
		doSendMagicEffect(coin, 15)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	if item.actionid == 50121 then
		doTeleportThing(cid, {x = 33277, y = 32553, z = 14})
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	return true
end