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
	
	-- NPC Amber feito por Rodrigo (Nottinghster)
	-- Inicio Amber NPC
	
	if msgcontains(msg, 'book') or msgcontains(msg, 'notebook') then
	npcHandler:say('Do you bring me my notebook?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,1955) >= 1 then
	npcHandler:say('Excellent. Here, take this short sword, that might serve you well.')
	doPlayerAddItem(cid, 2406)
	doPlayerRemoveItem(cid,1955, 1)
     setPlayerStorageValue(cid,3028,1)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,1955) == 0 then
	npcHandler:say('Hm, you don\'t have it.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Too bad.')
	talk_state = 0
	
	elseif msgcontains(msg, 'orcish') or msgcontains(msg, 'language') or msgcontains(msg, 'prisoner') then
	npcHandler:say('I speak some orcish words, not much though, just \'yes\' and \'no\' and such basic.')
	talk_state = 2
	
	elseif msgcontains(msg, 'yes') and talk_state == 2 then
	npcHandler:say('It\'s \'mok\' in orcish. I help you more about that if you have some food.')
	elseif msgcontains(msg, 'no') and talk_state == 2 then
	npcHandler:say('In orcish that\'s \'burp\'. I help you more about that if you have some food.')
	
	elseif msgcontains(msg, 'food') then
	npcHandler:say('My favorite dish is salmon. Oh please, bring me some of it.')
	
	elseif msgcontains(msg, 'salmon') then
	npcHandler:say('Yeah! If you give me some salmon I will tell you more about the orcish language.')
	talk_state = 3
	
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerItemCount(cid,2668) >= 1 then
	npcHandler:say('Thank you. Orcs call arrows \'pixo\'.')
	doPlayerRemoveItem(cid,2668,1)
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerItemCount(cid,2668) == 0 then
	npcHandler:say('You don\'t have one!')
	talk_state = 0
	
	elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 3) then
	npcHandler:say('See you later.')
	talk_state = 0
	
	end
	-- Final Simon NPC
	-- NPC Simon (Deeper Fibula Quest) feito por Rodrigo (Nottinghster)
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())