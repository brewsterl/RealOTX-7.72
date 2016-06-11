function onStepIn(cid, item, pos)
	if item.actionid==50105 then
		newpos = {x = 32957, y = 32076, z = 7}
		doPlayerSetTown(cid, 4)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Venore.")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)
		return true
	end
end