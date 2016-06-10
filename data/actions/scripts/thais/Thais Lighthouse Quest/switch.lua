function onUse(cid, item, frompos, item2, topos)
	tile1 = {x = 32225, y = 32276, z = 8, stackpos = 0} 
	gettile1 = getThingfromPos(tile1)
	if item.actionid == 4016 and item.itemid == 1945 then 
		doRemoveItem(gettile1.uid, 1)
		doCreateItem(427, 1, tile1)	
		doTransformItem(item.uid, item.itemid+1)
	elseif item.actionid == 4016 and item.itemid == 1946 then
		doRemoveItem(gettile1.uid, 1)
		doCreateItem(351, 1, tile1)
		doTransformItem(item.uid, item.itemid-1)    
	else
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end

	return true
end
