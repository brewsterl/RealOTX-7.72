function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 4500 then
		queststatus = getPlayerStorageValue(cid, 4500)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a blood herb.")
			doPlayerAddItem(cid, 2798, 10)
			setPlayerStorageValue(cid, 4500, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
