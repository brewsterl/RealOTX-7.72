function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 4501 then
		queststatus = getPlayerStorageValue(cid, 4501)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a silver key.")
			doPlayerAddItem(cid, 2088, 1)
			setPlayerStorageValue(cid, 4501, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end