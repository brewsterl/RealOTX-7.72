function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 9026 then
		queststatus = getPlayerStorageValue(cid, 9026)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found an backpack.")
			bp = doPlayerAddItem(cid, 1988, 1)
				item_uid = doAddContainerItem(bp, 1955, 1)
				doSetItemText(item_uid, "... abbot still clueless abour my ... ...After all those perils and puzzels I have located the throne of darkness at last. I will lead ......... crypts and monsters ... found one of the caged demons that seem to be leached as a powersupply of some sort ......... switches on the end of the scorpion path and the lair of the wicked web ...... died but I could make it to the throne. My wards are holding the howling ghosts and spectres at bay for now and I prepare to unleash the powers of the throne ......... still impossible! My wards are fading and the ancient spirits feel that they will soon claim another victory. I failed the brotherhood and will soon join the howling hords in their eternal torment and madness. ......has stoped. I KNOW they are coming after me now. I can see the flickering of the shadows as they aproach. THEY ARE COMING")
				doSetItemActionId(item_uid, 9026)

			setPlayerStorageValue(cid, 9026, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
		end
	end

	return true
end