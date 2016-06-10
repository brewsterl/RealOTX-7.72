function onUse(cid, item, frompos, item2, topos)
	local magicwallpos = {x = 32266, y = 31860, z = 11, stackpos = 1}
	local blackpos = {x = 32266, y = 31860, z = 11}
	local stairpos = {x = 32266, y = 31860, z = 11}
	local getmw = getThingfromPos(magicwallpos)
	local getblack = getThingfromPos(blackpos)
	local getstair = getThingfromPos(stairpos)
	if item.actionid == 9007 and item.itemid == 1945 and getmw.itemid == 1497 then
		doRemoveItem(getmw.uid, 1)
		doCreateItem(410, stairpos)
		doTransformItem(item.uid, item.itemid+1)
	elseif item.actionid == 9007 and item.itemid == 1946 and getmw.itemid == 0 then	
		doRemoveItem(getstair.uid, 1)
		doCreateItem(407, blackpos)
		doCreateItem(1497, magicwallpos)
		doTransformItem(item.uid, item.itemid-1)
	else
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end

	return true
end
