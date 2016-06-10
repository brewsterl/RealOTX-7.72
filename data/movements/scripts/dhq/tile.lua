function onStepIn(cid, item, frompos, item2, topos) 
	local wallpos = {x = 33210, y = 31630, z = 13, stackpos = 1}
	local wall1pos = {x = 33211, y = 31630, z = 13, stackpos = 1}
	local wall2pos = {x = 33212, y = 31630, z = 13, stackpos = 1}
	local tilepos = {x = 33190, y = 31629, z = 13, stackpos = 1}
	local tile2pos = {x = 33191, y = 31629, z = 13, stackpos = 1}
	local getwall = getThingfromPos(wallpos)
	local getwall1 = getThingfromPos(wall1pos)
	local getwall2 = getThingfromPos(wall2pos)
	local gettile = getThingfromPos(tilepos)
	local gettile2 = getThingfromPos(tile2pos)
	if gettile.itemid == 425 and gettile.itemid == 425 then
		doRemoveItem(getwall.uid, 1)
		doRemoveItem(getwall1.uid, 1)
		doRemoveItem(getwall2.uid, 1)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You moved the wall.")
	elseif gettile.itemid == 426 and gettile.itemid == 426 and getwall.itemid == 0  and getwall1.itemid == 0  and getwall2.itemid == 0  then
		doCreateItem(1050, 1, wallpos)
		doCreateItem(1050, 1, wall1pos)
		doCreateItem(1050, 1, wall2pos)
	else
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end

	return true
end
