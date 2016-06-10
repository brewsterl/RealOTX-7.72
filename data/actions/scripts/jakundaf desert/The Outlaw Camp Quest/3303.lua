function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 3303 then
		queststatus = getPlayerStorageValue(cid, 3303)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a copper key 3303.")
			item_uid = doPlayerAddItem(cid, 2089, 1)
				doSetItemActionId(item_uid, 3303)
			setPlayerStorageValue(cid, 3303, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
