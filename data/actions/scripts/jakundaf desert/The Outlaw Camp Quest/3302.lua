function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 3302 then
		queststatus = getPlayerStorageValue(cid, 3302)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a copper key 3302.")
			item_uid = doPlayerAddItem(cid, 2089, 1)
				doSetItemActionId(item_uid, 3302)
			setPlayerStorageValue(cid, 3302, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
