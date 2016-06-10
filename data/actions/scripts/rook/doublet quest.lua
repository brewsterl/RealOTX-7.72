function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 3008 then
		queststatus = getPlayerStorageValue(cid, 3008)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a doublet.")
			doPlayerAddItem(cid, 2485, 1)
			setPlayerStorageValue(cid, 3008, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end
