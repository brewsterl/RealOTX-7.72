local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

--------------------MESSAGES------------------------------------------------------------------------------
	if msgcontains(msg, 'deposit') then
		selfSay('Please tell me how much gold it is you would like to deposit.', cid)
		talkState[talkUser] = 1
	
	elseif msgcontains(msg, 'withdraw') then
		selfSay('Please tell me how much gold you would like to withdraw.', cid)
		talkState[talkUser] = 3
		
	elseif msgcontains(msg, 'transfer') then
		selfSay('Please tell me the amount of gold coins you would like to transfer.', cid)
		talkState[talkUser] = 5

	elseif msgcontains(msg, 'balance') then
		n = getPlayerBalance(cid)
		selfSay('Your balance are '..n..' golds.', cid)
		talkState[talkUser] = 0
	

----------------------DEPOSIT-------------------------------------------------------
	elseif talkState[talkUser] == 1 then
		if msgcontains(msg, 'all') then
			n = getPlayerMoney(cid)
			selfSay('Do you want deposit '..n..' golds ?', cid)
			talkState[talkUser] = 2			
		else
			n = getNumber(msg)
			selfSay('Do you want deposit '..n..' golds ?', cid)
			talkState[talkUser] = 2
		end

	elseif talkState[talkUser] == 2 then
		if msgcontains(msg, 'yes') then
			if getPlayerMoney(cid) >= n then
				doPlayerDepositMoney(cid,n)			
				selfSay('a', cid)
				talkState[talkUser] = 0
			else
				selfSay('You don\'t have money.', cid)
			end
		else
				selfSay('Ok then', cid)
		end
	
----------------------WITHDRAW------------------------------------------------------------------------------------------------------------------------------------	
	
	elseif talkState[talkUser] == 3 then
		if msgcontains(msg, 'all') then
			n = getPlayerBalance(cid)
			selfSay('Do you want withdraw '..n..' golds ?', cid)
			talkState[talkUser] = 4			
		else
			n = getNumber(msg)
			selfSay('Do you want withdraw '..n..' golds ?', cid)
			talkState[talkUser] = 4
		end
		
	elseif talkState[talkUser] == 4 then
		if msgcontains(msg, 'yes') then
			if getPlayerBalance(cid) >= n then
				doPlayerWithdrawMoney(cid, n)		
				selfSay('Here you are, '..n..' gold. Now your balance account is ' ..getPlayerBalance(cid)..' golds.', cid)
				talkState[talkUser] = 0
			else
				selfSay('There is not enough gold on your account', cid)
			end
		else
				selfSay('Ok then', cid)
		end
		
----------------------TRANSFER----------------------------------------------------------------------------------------		
	
	elseif talkState[talkUser] == 5 then
		if msgcontains(msg, 'all') then
			n = getPlayerBalance(cid)
			selfSay('Who would you like transfer '..n..' gold to?', cid)
			talkState[talkUser] = 6			
		else
			n = getNumber(msg)
			selfSay('Who would you like transfer '..n..' gold to?', cid)
			talkState[talkUser] = 6
		end
		
	elseif talkState[talkUser] == 6 then
		p = msg
		selfSay('So you would like to transfer '..n..' gold to '..p..'?', cid)
		talkState[talkUser] = 7
		
	elseif talkState[talkUser] == 7 then
		if msgcontains(msg, 'yes') then
			if getPlayerBalance(cid) >= n then
				if doPlayerTransferMoneyTo(cid, p, n) == TRUE then
					selfSay('You have transferred '..n..' gold to '..p..' and your account balance is '..getPlayerBalance(cid)..' golds.', cid)
					talkState[talkUser] = 0
				else
				selfSay('This player does not exist. Please tell me a valid name!', cid)
				end
			else
				selfSay('There is not enough gold on your account', cid)
			end
		else
			selfSay('Ok then', cid)
		end
		
	
	end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())



-- function maded by Gesior--
function getNumber(txt) --return number if its number and is > 0, else return 0
x = string.gsub(txt,"%a","")
x = tonumber(x)
if x ~= nill and x > 0 then
return x
else
return 0
end
end