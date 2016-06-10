function onUse(cid, item, frompos, item2, topos)
	local gatepos = {x = 32790, y = 31594, z = 7, stackpos = 1}
	local getgate = getThingfromPos(gatepos)
	if item.uid == 9508 and item.itemid == 1945 and getgate.itemid == 1285 then
		doRemoveItem(getgate.uid, 1)
		doTransformItem(item.uid, item.itemid+1)
	elseif item.uid == 9508 and item.itemid == 1946 and getgate.itemid == 0 then
		doCreateItem(1285, 1, gatepos)
		doTransformItem(item.uid, item.itemid-1)
		doRemoveItem(gettele.uid, 1)
	else
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end

	return true
end
