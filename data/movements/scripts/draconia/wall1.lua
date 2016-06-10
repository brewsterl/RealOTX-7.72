function onStepOut(cid, item, frompos, item2, topos) 
	wall1 = {x = 32796, y = 31594, z = 5, stackpos = 1}
	getwall1 = getThingfromPos(wall1)
	if item.actionid == 9600 and
		getwall1.itemid == 0 then
		doTransformItem(item.uid, item.itemid + 1)
		doCreateItem(1025, 1, wall1)
	end
end
 
function onStepIn(cid, item, frompos, item2, topos)
	wall1 = {x = 32796, y = 31594, z = 5, stackpos = 1}
	getwall1 = getThingfromPos(wall1)
	if item.actionid == 9600 and 
		getwall1.itemid == 1025 then
		doTransformItem(item.uid, item.itemid - 1)
		doRemoveItem(getwall1.uid, 1)
	end
end
