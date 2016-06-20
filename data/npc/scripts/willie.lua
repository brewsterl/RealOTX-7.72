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
	
	
	
	if msgcontains(msg, 'banana') or msgcontains(msg, 'quest') or msgcontains(msg, 'reward') then
	npcHandler:say('Have you found a banana for me?')
	
	elseif msgcontains (msg, 'yes') and getPlayerItemCount(cid,2676) >= 1 then
	npcHandler:say('A banana! Great. Take this shield, so the &#@&* monsters don\'t beat the &@*&@ out of you.')
	doPlayerAddItem(cid, 2526, 1)
	doPlayerRemoveItem(cid, 2676, 1)
     setPlayerStorageValue(cid,3034,1)
    	talk_state = 0
	
	elseif msgcontains (msg, 'banana') and talk_state == 1 and getPlayerItemCount(cid, 2676) == 0 then
	npcHandler:say('I\'d love to try a banana pie but I lack the bananas. If you get me one, I\'ll reward you.')
	talk_state = 0

	end
	-- Final Lee'Delle NPC
	-- NPC Lee'Delle feito por Rodrigo (Nottinghster)
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
