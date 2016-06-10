function onStepIn(cid, item, pos)
	entrance = {x = 32791, y = 32327, z = 10, stackpos = 255}
	fail = {x = 32791, y = 32331, z = 10, stackpos = 255}
	if item.actionid == 4650 and getPlayerItemCount(cid, 1970) >= 1 then
		doTeleportThing(cid, entrance)
		doSendMagicEffect(entrance, 12)
	else
		doTeleportThing(cid, fail)
		doSendMagicEffect(fail, 2)
	end

	return true
end