function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 9000 then
		queststatus = getPlayerStorageValue(cid, 9000)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a obsidian lance.")
			doPlayerAddItem(cid, 2425, 1)
			setPlayerStorageValue(cid, 9000, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end