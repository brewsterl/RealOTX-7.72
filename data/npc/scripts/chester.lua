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
	
	if msgcontains(msg, 'gamel rebel') or msgcontains(msg, 'gamel is rebel') or msgcontains(msg, 'gamel is a rebel') then
	npcHandler:say('Are you saying that Gamel is a member of the rebellion?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 then
	npcHandler:say('Do you know what his plans are about?')
	talk_state = 2
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Then don\'t bother me with that. I am a busy man.')
	talk_state = 0
	
	elseif msgcontains(msg, 'magic crystal') and talk_state == 2 then
	npcHandler:say('That is terrible! Will you give me the crystal?')
	talk_state = 3
	
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerItemCount(cid,2177) >= 1 then
	npcHandler:say('Thank you! Take this ring. If you ever need a healing, come, bring the scroll, and ask me to \'heal\'.')
	doPlayerRemoveItem(cid,2177,1)
	doPlayerAddItem(cid,2168,1)
	talk_state = 0
	
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerItemCount(cid,2177) == 0 then
	npcHandler:say('Sorry, you have none.')
	
	elseif msgcontains(msg, 'no') and talk_state == 3 then
	npcHandler:say('Traitor!')
	talk_state = 0
	end
	
	return TRUE
	end
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
