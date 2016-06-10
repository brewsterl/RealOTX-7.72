function onStepIn(cid, item, pos)
	if isPremium(cid) == false then
		doSendMagicEffect(pos, 2)
		pos.x = pos.x+2
		doTeleportThing(cid, pos)
		doSendMagicEffect(pos, 13)
	else
		doPlayerSendCancel(cid, "Only premium players can enter.")
	end

	return true
end
