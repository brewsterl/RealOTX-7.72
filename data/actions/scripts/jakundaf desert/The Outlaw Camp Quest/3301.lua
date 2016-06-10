function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 3301 then
		queststatus = getPlayerStorageValue(cid, 3301)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a copper key 3301.")
			item_uid = doPlayerAddItem(cid, 2089, 1)
				doSetItemActionId(item_uid, 3301)
			setPlayerStorageValue(cid, 3301, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
