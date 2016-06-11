function onStepIn(cid, item, pos)
	if item.actionid==50103 then
		newpos = {x = 32732, y = 31634, z = 7}
		doPlayerSetTown(cid, 1)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Ab/'Dendriel")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)

		return true
	end
end