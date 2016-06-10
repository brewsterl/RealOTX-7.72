function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 3024 then
		queststatus = getPlayerStorageValue(cid, 3024)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a combat knife.")
			doPlayerAddItem(cid, 2103, 1)
			setPlayerStorageValue(cid, 3024, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
