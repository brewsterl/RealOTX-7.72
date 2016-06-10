function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 9001 then
		queststatus = getPlayerStorageValue(cid, 9001)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a griffin shield.")
			doPlayerAddItem(cid, 2533, 1)
			setPlayerStorageValue(cid, 9001, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end