function onUse(cid, item, fromposition, itemEx, toPosition)
	if(hasCondition(cid, CONDITION_EXHAUSTED) == true) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
		return true
	end

	switch1pos = {x=32637, y=31881, z=2, stackpos=1}
	telepos = {x=32636, y=31881, z=7}
	tilepos1 = {x=32636, y=31881, z=2}
	getswitch1 = getThingfromPos(switch1pos)
	gettilepos1 = getThingfromPos(tilepos1)
	if item.actionid == 8023 and getswitch1.itemid == 1945 and gettilepos1.itemid == 425 then
		doAddCondition(cid, exhaust)
		doTeleportThing(cid, telepos)
		doSendMagicEffect(telepos, 2)
	else
		pos.x = pos.x-2
		doTeleportThing(cid, pos)
		doSendMagicEffect(pos, 10)
	end

	return true
end
