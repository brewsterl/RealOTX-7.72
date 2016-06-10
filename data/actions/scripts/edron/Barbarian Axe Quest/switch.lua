function onUse(cid, item, frompos, item2, topos)
	gatepos = {x = 33171, y = 31897, z = 8, stackpos = 1}
	getgate = getThingfromPos(gatepos)
	if item.uid == 10001 and item.itemid == 1945 and getgate.itemid == 1355 then
		doRemoveItem(getgate.uid, 1)
		doTransformItem(item.uid, item.itemid+1)
	elseif item.uid == 10001 and item.itemid == 1946 and getgate.itemid == 0 then
		doCreateItem(1355, 1, gatepos)
		doTransformItem(item.uid, item.itemid-1)
	else
		doPlayerSendCancel(cid, "Sorry not possible.")
	end

	return true
end
