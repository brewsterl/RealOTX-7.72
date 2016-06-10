function onUse(cid, item, frompos, item2, topos)
	gatepos = {x = 32259, y = 31890, z = 10, stackpos = 1}
	getgate = getThingfromPos(gatepos)
	if item.uid == 9006 and item.itemid == 1945 and getgate.itemid == 1497 then
		doRemoveItem(getgate.uid, 1)
		doTransformItem(item.uid, item.itemid+1)
	elseif item.uid == 9006 and item.itemid == 1946 and getgate.itemid == 0 then
		doCreateItem(1497, 1, gatepos)
		doTransformItem(item.uid, item.itemid-1)
	else
		doPlayerSendCancel(cid, "Not Possible")
	end

	return true
end
