function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 10100 then
		queststatus = getPlayerStorageValue(cid, 10100)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a plate armor")
			doPlayerAddItem(cid, 2463, 1)
			setPlayerStorageValue(cid, 10100, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
