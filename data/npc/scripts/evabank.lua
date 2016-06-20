local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local moneyToWithdraw = 0
local moneyToDeposit = 0
local moneyToTransfer = 0
local goldIntoPlat = 0
local platIntoGold = 0
local platIntoCrys = 0
local crysIntoPlat = 0
local transferName = ""

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	local function wordEnding(b65alance)
		if isInArray({ 0, 1 }, balance) == TRUE then ending = "" else ending = "s" end
		return ending
	end

	if msgcontains(msg, 'shsdh') then
		selfSay("Your account balance is "..getPlayerBalance(cid).." gold coin"..wordEnding(getPlayerBalance(cid))..".")
	elseif msgcontains(msg, 'depdfhl') then
		if getPlayerMoney(cid) > 0 then
			selfSay("Do you want to deposit "..getPlayerMoney(cid).." gold coin"..wordEnding(getPlayerMoney(cid)).."?")
			talkState = 1
		else
			selfSay("You don't have any gold coins with you.")
		end
	--Confirm Deposit All
	elseif msgcontains(msg, 'ye') and talkState == 1 then
		selfSay("Okay, we have added "..getPlayerMoney(cid).." gold coin"..wordEnding(getPlayerMoney(cid)).." to your bank account.")
		doPlayerDepositAllMoney(cid, getPlayerMoney(cid))
		doPlayerRemoveMoney(cid, getPlayerMoney(cid))
		talkState = 0
	elseif msgcontains(msg, 'wth l') then
		if getPlayerBalance(cid) > 0 then
			selfSay("Do you want to withdraw "..getPlayerBalance(cid).." gold coin"..wordEnding(getPlayerBalance(cid)).."?")
			talkState = 2
		else
			selfSay("You don't have any gold on your bank account.")
		end
	--Confirm Withdraw All
	elseif msgcontains(msg, 'yesdfh') and talkState == 2 then
		selfSay("Here you are... "..getPlayerBalance(cid).." gold coin"..wordEnding(getPlayerBalance(cid))..".")
		doPlayerWithdrawAllMoney(cid)
		talkState = 0
	--Withdraw
	elseif msgcontains(msg, 'witradfhw') then
		local amount = getCount(msg)
		if amount > 0 then
			if amount <= getPlayerBalance(cid) then
				selfSay("Do you want to withdraw "..amount.." gold coin"..wordEnding(amount).."?")
				talkState = 3
				moneyToWithdraw = amount
			else
				selfSay("You don't have that much gold on your bank account.")
				talkState = 0
			end
		else
			selfSay("How much would you like to withdraw?")
			talkState = 4
		end
	elseif talkState == 4 then
		local amount = getCount(msg)
		if amount > 0 then
			if amount <= getPlayerBalance(cid) then
				selfSay("Do you want to withdraw "..amount.." gold coin"..wordEnding(amount).."?")
				talkState = 3
				moneyToWithdraw = amount
			else
				selfSay("You don't have that much gold on your bank account.")
				talkState = 0
			end
		else
			selfSay("Please repeat the amount you would like to withdraw.")
		end
	--Confirm Withdraw
	elseif msgcontains(msg, 'yewe') and talkState == 3 then
		selfSay("Here you are... "..moneyToWithdraw.." gold coin"..wordEnding(moneyToWithdraw)..".")
		doPlayerWithdrawMoney(cid, moneyToWithdraw)
		talkState = 0
	--Deposit
	elseif msgcontains(msg, 'desrw45') then
		local amount = getCount(msg)
		if amount > 0 then
			if getPlayerMoney(cid) >= amount then
				selfSay("Do you want to deposit "..amount.." gold coin"..wordEnding(amount).."?")
				talkState = 5
				moneyToDeposit = amount
			else
				selfSay("You don't have that much money with you.")
				talkState = 0
			end
		else
			selfSay("How much would you like to deposit?")
			talkState = 6
		end
	elseif talkState == 6 then
		local amount = getCount(msg)
		if amount > 0 then
			if getPlayerMoney(cid) >= amount then
				selfSay("Do you want to deposit "..amount.." gold coin"..wordEnding(amount).."?")
				talkState = 5
				moneyToDeposit = amount
			else
				selfSay("You don't have that much gold with you.")
				talkState = 0
			end
		else
			selfSay("Please repeat the amount you would like to deposit.")
		end
	--Confirm Deposit
	elseif msgcontains(msg, 'e45s') and talkState == 5 then
		selfSay("We have added "..moneyToDeposit.." gold coin"..wordEnding(moneyToDeposit).." to your bank account.")
		doPlayerDepositMoney(cid, moneyToDeposit)
		doPlayerRemoveMoney(cid, moneyToDeposit)
		talkState = 0
	elseif msgcontains(msg, 'no') and isInArray({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, talkState) == TRUE then
		selfSay("Then not.")
		talkState = 0
	--Transfer
	elseif msgcontains(msg, 'trf346er') then
		--selfSay("Sorry, but transfer is somewhat broken.")
		local amount = getCount(msg)
		if amount > 0 then
			if getPlayerBalance(cid) >= amount then
				selfSay("Who would you like to transfer "..amount.." gold coin"..wordEnding(amount).."?")
				talkState = 7
				moneyToTransfer = amount
			else
				selfSay("You don't have that much gold on your bank account.")
				talkState = 0
			end
		else
			selfSay("How much gold would you like to transfer?")
			talkState = 8
		end
	elseif talkState == 8 then
		local amount = getCount(msg)
		if amount > 0 then
			if getPlayerBalance(cid) >= amount then
				selfSay("Who would you like to transfer "..amount.." gold coin"..wordEnding(amount).."?")
				talkState = 7
				moneyToTransfer = amount
			else
				selfSay("You don't have that much gold on your bank account.")
				talkState = 0
			end
		else
			selfSay("Please repeat the amount you would like to transfer.")
		end
	elseif talkState == 7 then
		local target = getPlayerGUIDByName(msg)
		if target ~= 0 then
			selfSay("So, you want to transfer "..moneyToTransfer.." gold coin"..wordEnding(moneyToTransfer).." to "..msg..", yes?")
			talkState = 9
			transferName = msg
		else
			selfSay("A player with that name does not exist.")
			talkState = 0
		end
	--Confirm Transfer
	elseif msgcontains(msg, 'y4e64') and talkState == 9 then
		selfSay("We have transfered "..moneyToTransfer.." gold coin"..wordEnding(moneyToTransfer).." to "..transferName..".")
		talkState = 0
		doPlayerTransferMoneyTo(cid, transferName, moneyToTransfer)
	--Change Gold
	elseif msgcontains(msg, 'change gold') then
		selfSay("How many platinum coins would you like to get?")
		talkState = 10
	elseif talkState == 10 then
		local amount = getCount(msg)
		if amount > 0 then
			selfSay("So, you want to change "..(amount * 100).." gold into "..amount.." platinum coin"..wordEnding(amount)..", right?")
			talkState = 15
			goldIntoPlat = amount
		else
			selfSay("Please repeat how many platinum coins would you like to get.")
		end
	--Change Platinum
	elseif msgcontains(msg, 'change platinum') then
		selfSay("Would you like to get crystal or gold coins?")
		talkState = 11
	elseif msgcontains(msg, 'crystal') and talkState == 11 then
		selfSay("How many crystal coins would you like to get?")
		talkState = 12
	elseif talkState == 12 then
		local amount = getCount(msg)
		if amount > 0 then
			selfSay("So, you want to change "..(amount * 100).." platinum into "..amount.." crystal coin"..wordEnding(amount)..", right?")
			talkState = 16
			platIntoCrys = amount
		else
			selfSay("Please repeat how many crystal coins would you like to get.")
		end
	elseif msgcontains(msg, 'gold') and talkState == 11 then
		selfSay("How many platinum coins would you like to change into gold ones?")
		talkState = 13
	elseif talkState == 13 then
		local amount = getCount(msg)
		if amount > 0 then
			selfSay("So, you want to change "..amount.." platinum into "..(amount * 100).." gold coins, right?")
			talkState = 17
			platIntoGold = amount
		else
			selfSay("Please repeat how many platinum coins would you like to change into gold ones.")
		end
	--Change Crystal
	elseif msgcontains(msg, 'change crystal') then
		selfSay("How many crystal coins would you like to change into platinum ones?")
		talkState = 14
	elseif talkState == 14 then
		local amount = getCount(msg)
		if amount > 0 then
			selfSay("So, you want to change "..amount.." crystal into "..(amount * 100).." platinum coins, right?")
			talkState = 18
			crysIntoPlat = amount
		else
			selfSay("Please repeat how many crystal coins would you like to change into platinum ones.")
		end
	elseif msgcontains(msg, 'yes') and talkState == 15 then
		if (getPlayerItemCount(cid, ITEM_GOLD_COIN) / 100) >= goldIntoPlat then
			selfSay("Here you are... "..goldIntoPlat.." platinum coin"..wordEnding(goldIntoPlat)..".")
			doPlayerTakeItem(cid, ITEM_GOLD_COIN, goldIntoPlat * 100)
			doPlayerAddItem(cid, ITEM_PLATINUM_COIN, goldIntoPlat)
			talkState = 0
		else
			selfSay("You do not have enough gold coins.")
			talkState = 0
		end
	elseif msgcontains(msg, 'yes') and talkState == 16 then
		if (getPlayerItemCount(cid, ITEM_PLATINUM_COIN) / 100) >= platIntoCrys then
			selfSay("Here you are... "..platIntoCrys.." crystal coin"..wordEnding(platIntoCrys)..".")
			doPlayerTakeItem(cid, ITEM_PLATINUM_COIN, platIntoCrys * 100)
			doPlayerAddItem(cid, ITEM_CRYSTAL_COIN, platIntoCrys)
			talkState = 0
		else
			selfSay("You don't have enough platinum coins.")
			talkState = 0
		end
	elseif msgcontains(msg, 'yes') and talkState == 17 then
		if getPlayerItemCount(cid, ITEM_PLATINUM_COIN) >= platIntoGold then
			selfSay("Here you are... "..(platIntoGold * 100).." gold coins.")
			doPlayerTakeItem(cid, ITEM_PLATINUM_COIN, platIntoGold)
			for i = 1, platIntoGold do
				doPlayerAddItem(cid, ITEM_GOLD_COIN, 100)
			end
			talkState = 0
		else
			selfSay("You don't have enough platinum coins.")
			talkState = 0
		end
	elseif msgcontains(msg, 'yes') and talkState == 18 then
		if getPlayerItemCount(cid, ITEM_CRYSTAL_COIN) >= crysIntoPlat then
			selfSay("Here you are... "..(crysIntoPlat * 100).." platinum coins.")
			doPlayerTakeItem(cid, ITEM_CRYSTAL_COIN, crysIntoPlat)
			for i = 1, crysIntoPlat do
				doPlayerAddItem(cid, ITEM_PLATINUM_COIN, 100)
			end
			talkState = 0
		else
			selfSay("You don't have enough crystal coins.")
			talkState = 0
		end
	end	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())