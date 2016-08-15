function onStepIn(cid, item, pos)
	entrance = {x = 32791, y = 32331, z = 10, stackpos = 255}
	if item.actionid == 4651 then
		doTeleportThing(cid, entrance)
		doSendMagicEffect(entrance, 12)
	end

	return true
end