function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 8001 then
		queststatus = getPlayerStorageValue(cid, 8001)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a key.")
			key = doPlayerAddItem(cid, 2089, 1)
				doSetItemActionId(key, 3899)
			setPlayerStorageValue(cid, 8001, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
