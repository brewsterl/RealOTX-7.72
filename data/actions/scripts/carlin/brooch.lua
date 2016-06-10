function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 9025 then
		queststatus = getPlayerStorageValue(cid, 9025)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a family brooch.")
			doPlayerAddItem(cid, 2318, 1)
			setPlayerStorageValue(cid, 9025, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
