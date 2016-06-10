function onAddItem(moveitem, tileitem, pos, cid)
	if moveitem.itemid == 2025 and moveitem.type == 2 then
		local v = getTopCreature({x = 32791, y = 32334, z = 9}).uid
		if not isPlayer(v) then end
		if isPlayer(v) then
			doSendMagicEffect(getThingPos(v), CONST_ME_DRAWBLOOD)
			doTeleportThing(v, {x = 32791, y = 32334, z = 10})
			doSendMagicEffect({x = 32791, y = 32334, z = 10}, 10)
			doCreatureSay(v, "Muahahahaha...", 1)
			return false
		end
	end

	return false
end