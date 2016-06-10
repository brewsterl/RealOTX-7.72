function onUse(cid, item, frompos, item2, topos)
	local oil = getTileItemById(frompos, 2025)
	local square = {x = 32801, y = 32336, z = 11, stackpos = 0} 
	local playerTile = {x = 32801, y = 32336, z = 11, stackpos = 255} 
	local present_player = getThingfromPos(playerTile)
	local present_square = getThingfromPos(square)
	if oil.uid > 0 and oil.type == 11 then
		if item.itemid == 1945 then
			if present_square.itemid == 493 then
				doTransformItem(present_square.uid, 1284)
			else
				doTransformItem(present_square.uid, 493)
			end

		doTransformItem(item.uid, item.itemid+1) 
		elseif item.itemid == 1946 then
			if present_square.itemid == 493 then
				doTransformItem(present_square.uid, 1284)
			else
				doTransformItem(present_square.uid, 493)
			end

			doSendMagicEffect(square, 1)
			doTransformItem(item.uid, item.itemid-1) 				
			if isCreature(present_player.uid) == true then
				doMoveCreature(present_player.uid, WEST)
			else
				return false
			end
		else
			doPlayerSay(cid, "The lever is creaking and rusty.", 2)	
			doTransformItem(item.uid, 1945) 
			return false  
		end
	else
		doPlayerSay(cid, "The lever is creaking and rusty.", 2)	
		doTransformItem(item.uid, 1946) 
		return false
	end

  return true
end
