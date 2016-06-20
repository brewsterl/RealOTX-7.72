local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
		
		local key = "PD-D-KS-P-PD"
		local queststate1 = getPlayerStorageValue(cid,6667)

		if msgcontains(msg, 'math') and queststate1 == 1 then
        npcHandler:say('My surreal numbers are based on astonishing facts. Are you interested in learning the secret of mathemagics?')
        talk_state = 1
		elseif msgcontains(msg, 'yes') and talk_state == 1 then
            npcHandler:say('But first tell me your favourite colour please!')
                talk_state = 2
		elseif msgcontains(msg, 'green') and talk_state == 2 then
            npcHandler:say('Very interesting. So are you ready to proceed in you lesson in mathemagics?')
				doPlayerRemoveMoney(cid,1000)
					talk_state = 3
		elseif msgcontains(msg, 'yes') and talk_state == 3 then
            npcHandler:say('So know that everthing is based on the simple fact that 1 + 1 = 2!')
				setPlayerStorageValue(cid,6668,1)
                talk_state = 4
		elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 4) then
			npcHandler:say('Next time we should talk about my surreal numbers.')

			talk_state = 0
		elseif msgcontains(msg, 'key') then
		npcHandler:say('Do you want a key to the mad mage room?')
		talk_state = 5
		elseif msgcontains(msg, 'yes') and talk_state == 5 then
		npcHandler:say('Here you are a special key.')
		key = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(key,3666)
		talk_state = 0
		end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())