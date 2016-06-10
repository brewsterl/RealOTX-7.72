function onStepIn(cid, item, pos)
	if getPlayerLevel(cid) < 20000 then
		pos.y = pos.y+1
		doTeleportThing(cid, pos)
	else
		doPlayerSendCancel(cid, "")
	end

	return true
end
