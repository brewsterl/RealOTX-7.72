function onStepOut(cid, item, frompos, item2, topos)
	wall1 = {x = 32225, y = 32283, 	z = 9}
	getwall1 = getThingfromPos(wall1)
	if item.actionid == 4444 and getwall1.itemid == 432 then
		doRemoveItem(getwall1.uid, 1)
		doCreateItem(424, 1, wall1)
		doTransformItem(item.uid, item.itemid + 1)
	end
end

function onStepIn(cid, item, frompos, item2, topos)
	wall1 = {x = 32225, y = 32283, z = 9}
	getwall1 = getThingfromPos(wall1)
	if item.actionid == 4444 and getwall1.itemid == 424 then
		doRemoveItem(getwall1.uid, 1)
		doCreateItem(432, 1, wall1)
		doTransformItem(item.uid, item.itemid - 1)
	end
end