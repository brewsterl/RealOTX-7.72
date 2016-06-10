function onUse(cid, item, frompos, item2, topos)
	local telepos = {x=32233, y=32276, z=9, stackpos=1}
	local gopos = {x=32225, y=32275, z=10, stackpos=1}
	local gettele = getThingfromPos(telepos)
	if item.actionid == 4017 and item.itemid == 1945 then
		doTransformItem(item.uid, item.itemid+1)
		item_uid = doCreateItem(1387, 1, telepos)
		doSetItemActionId(item_uid, 4445)
	elseif item.actionid == 4017 and item.itemid == 1946 then
		doTransformItem(item.uid, item.itemid-1)
		doRemoveItem(gettele.uid, 1)
	else
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end

	return true
end
