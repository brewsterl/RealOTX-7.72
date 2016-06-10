--Script by Nottinghster
function onStepIn(cid, item, pos)
	newpos = {x = 32225, y = 32275 , z = 10}
	newpos1 = {x = 32232, y = 32276 , z = 9}
	if item.actionid == 4445 then
		doTeleportThing(cid, {x = 32225, y = 32275, z = 10})
		doSendMagicEffect(newpos, 14)
	end

	if item.actionid == 4446 then
		doTeleportThing(cid, {x = 32232, y = 32276 , z = 9})
		doSendMagicEffect(newpos1, 14)
	end

	return true
end