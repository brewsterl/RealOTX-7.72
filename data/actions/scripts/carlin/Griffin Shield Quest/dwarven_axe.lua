function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 9002 then
		queststatus = getPlayerStorageValue(cid, 9002)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a dwarven axe.")
			doPlayerAddItem(cid, 2435, 1)
			setPlayerStorageValue(cid, 9002, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end