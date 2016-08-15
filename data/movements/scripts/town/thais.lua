function onStepIn(cid, item, pos)
	if item.actionid==50101 then
		newpos = {x = 32369, y = 32241, z = 7}
		doPlayerSetTown(cid, 3)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Thais")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)
		return true
	end
end