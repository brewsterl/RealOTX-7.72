function onStepIn(cid, item, pos)
	if getPlayerLevel(cid) < 2 then
		doPlayerSendCancel(cid, "Only players with level 2 or higher may pass.")
		pos.y = pos.y+2
		doTeleportThing(cid, pos)
		doSendMagicEffect(pos, 12)
	else
		doPlayerSendCancel(cid, "")
	end

	return true
end
