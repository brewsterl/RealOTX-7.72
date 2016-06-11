function onStepIn(cid, item, pos)
	if item.actionid==50102 then
		newpos = {x = 32360, y = 31782, z = 7}
		doPlayerSetTown(cid, 5)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Carlin")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)
		return true
	end
end