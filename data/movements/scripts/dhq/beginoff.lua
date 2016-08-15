function onStepOut(cid, item, frompos, item2, topos) 
	wall1 = {x = 33210, y = 31630, z = 13, stackpos = 1}
	wall2 = {x = 33211, y = 31630, z = 13, stackpos = 1}
	wall3 = {x = 33212, y = 31630, z = 13, stackpos = 1}
	getwall1 = getThingfromPos(wall1)
	getwall2 = getThingfromPos(wall2)
	getwall3 = getThingfromPos(wall3)
	if item.uid == 9025 and getwall1.itemid == 0 and getwall2.itemid == 0 and getwall3.itemid == 0 then
		doTransformItem(item.uid, item.itemid + 1)
		doCreateItem(1050, 1, wall1)
		doCreateItem(1050, 1, wall2)
		doCreateItem(1050, 1, wall3)
	end
end

function onStepIn(cid, item, frompos, item2, topos)
	wall1 = {x = 33210, y = 31630, z = 13, stackpos = 1}
	wall2 = {x = 33211, y = 31630, z = 13, stackpos = 1}
	wall3 = {x = 33212, y = 31630, z = 13, stackpos = 1}
	tile1 = {x = 33191, y = 31629, z = 13}
	getwall1 = getThingfromPos(wall1)
	getwall2 = getThingfromPos(wall2)
	getwall3 = getThingfromPos(wall3)
	gettile1 = getThingfromPos(tile1)
	if item.uid == 9025 and gettile1.itemid == 425 and getwall1.itemid == 1050 and getwall2.itemid == 1050 and getwall3.itemid == 1050 then
		doTransformItem(item.uid, item.itemid - 1)
		doRemoveItem(getwall1.uid, 1)
		doRemoveItem(getwall2.uid, 1)
		doRemoveItem(getwall3.uid, 1)
	end
end