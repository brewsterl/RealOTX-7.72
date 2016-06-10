local bridgeID = 1284
local back = {
	x = 32102, y = 32205, z = 8
}

bridgePos = {
	[1] = {x = 32099, y = 32205, z = 8}, 
	[2] = {x = 32100, y = 32205, z = 8}, 
	[3] = {x = 32101, y = 32205, z = 8}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 1945 then
		for i = 3009, 3010 do
			doTransformItem(i, 1946)
		end

		doCreateItem(bridgeID, bridgePos[2])
		if getTileItemById(bridgePos[1], 4645).itemid ~= nil then
			doTransformItem(getTileItemById(bridgePos[1], 4645).uid, bridgeID)
		end

		if getTileItemById(bridgePos[3], 4647).itemid > 0 then
			doTransformItem(getTileItemById(bridgePos[3], 4647).uid, bridgeID)
		end
	elseif item.itemid == 1946 then
		for i = 3009, 3010 do
			doTransformItem(i, 1945)
		end

		for p = 1, #bridgePos do
			doRelocate(bridgePos[p], back)
		end

		for z = 1, #bridgePos do
			bridgePos[z].stackpos = 254
			if getThingFromPos(bridgePos[z]).itemid > 1000 then
				doRemoveItem(getThingFromPos(bridgePos[z]).uid)
			end

			bridgePos[z].stackpos = 1
			if getThingFromPos(bridgePos[z]).itemid > 1000 then
				doRemoveItem(getThingFromPos(bridgePos[z]).uid)
			end
		end

		doCreateItem(4616, bridgePos[2])
		doCreateItem(351, bridgePos[1])
		doCreateItem(351, bridgePos[3])
		doCreateItem(4645, bridgePos[1])
		doCreateItem(4647, bridgePos[3])
	end

	return true
end
