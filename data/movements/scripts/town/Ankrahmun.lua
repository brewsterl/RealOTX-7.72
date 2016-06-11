function onStepIn(cid, item, pos)
	if item.actionid==50108 then
		newpos = {x = 33195, y = 32853, z = 8}
		doPlayerSetTown(cid, 6) -- put the town id here
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed your residence to Ankrahmun.")
		doTeleportThing(cid, newpos)
		doSendMagicEffect(newpos, 12)

		return true
	end
end