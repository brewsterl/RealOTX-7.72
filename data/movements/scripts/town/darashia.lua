function onStepIn(cid, item, pos)
	if item.actionid==50107 then
		newpos = {x = 33213, y = 32454, z = 1}
		doPlayerSetTown(cid, 7)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Darashia.")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)
		return true
	end
end