local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

function creatureSayCallback(cid, type, msg)
	-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
	if(npcHandler.focus ~= cid) then
		return false
	end


		if msgcontains(msg, 'hugo') then
        npcHandler:say('Ah, the bane of the Plains of Havoc, the hidden beast, the unbeatable foe. I live here for years and I am sure it\'s only a myth.')
        talk_state = 1
		elseif msgcontains(msg, 'myth') and talk_state == 1 then
            npcHandler:say('There are many tales about the fearsome Hugo. It\'s said it is an abomination, accidentally created by Yenny the Gentle. It\'s halve demon, halve something else and people say it\'s still alive after dozens of years.')
                talk_state = 2
		elseif msgcontains(msg, 'yenny the gentle') and talk_state == 2 then
            npcHandler:say('Yenny, known as the Gentle, was one of most powerfull magicwielders in ancient times and known throughout the world for her mercy and kindness.')
					setPlayerStorageValue(cid,6664,1)
					talk_state = 3
		elseif msgcontains(msg, 'no') and (talk_state >= 1 and talk_state <= 3) then
			npcHandler:say('Good Bye. '.. getPlayerName(cid) ..'!')
			talk_state = 0
		end
	-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())