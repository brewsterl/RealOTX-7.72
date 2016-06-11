function onStepIn(cid, item, pos)
	if item.actionid==50106 then
		newpos = {x = 33217, y = 31814, z = 8}
		doPlayerSetTown(cid, 9)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Edron.")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)
		return true
	end
end