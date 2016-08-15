function onStepIn(cid, item, pos)
	coin = {x = 33234, y = 32692, z = 13, stackpos = 1}
	newpos = {x = 33234, y = 32687 , z = 13}
	getcoin = getThingfromPos(coin)

	if item.actionid == 50122 and getcoin.itemid == 2159 then
		doTeleportThing(cid, newpos)
		doRemoveItem(getcoin.uid, 1)
		doSendMagicEffect(coin, 15)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	if item.actionid == 50123 then
		doTeleportThing(cid, {x = 33234, y = 32693, z = 13})
		doSendMagicEffect(getCreaturePosition(cid), 10)
	end

	return true
end