function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 1015 then
		queststatus = getPlayerStorageValue(cid, 1015)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a triple ultimate healing rune.")
			doPlayerAddItem(cid, 2273, 3)
			setPlayerStorageValue(cid, 1015, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end