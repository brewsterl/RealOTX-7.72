function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 4502 then
		queststatus = getPlayerStorageValue(cid, 4502)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a crown amor.")
			doPlayerAddItem(cid, 2487, 1)
			setPlayerStorageValue(cid, 4502, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
