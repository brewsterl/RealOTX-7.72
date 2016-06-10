function onUse(cid, item, frompos, item2, topos)
	CratePos = {x=32479, y=31900, z=5, stackpos=1}
	if item.actionid == 8003 and item.itemid == 1945 then
		doCreateItem(1739, 1, CratePos)
		doTransformItem(item.uid, item.itemid+1)
	else
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end
end