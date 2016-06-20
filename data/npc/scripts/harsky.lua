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
	
	if msgcontains(msg, '8562') then
	npcHandler:say('Do you bring a freshly killed rat for a bounty of 1 gold?.')
	talk_state = 1
	elseif msgcontains(msg, 'ye45s') and talk_state == 1 and getPlayerItem(cid,2813) then
	npcHandler:say('Here is your reward. You will become a great warrior some day.')
	talk_state = 0
	elseif msgcontains(msg, 'y857es') and talk_state == 1 and getPlayerItem(cid,2813) then
	npcHandler:say('Look like it wasn\'t as dead as you thought ... it\'s gone.')
	talk_state = 0
	elseif msgcontains(msg, '4545no') and talk_state == 1 then
	npcHandler:say('Come on. Don\'t waste my time with your jests.')
	talk_state = 0
	elseif msgcontains(msg, 'fuck') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'idiot') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'asshole') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'ass') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'fag') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'stupid') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'tyrant') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'shit') then
	npcHandler:say('Take this!')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0
	elseif msgcontains(msg, 'shit') then
	npcHandler:say('lunatic')
	doAddCondition(cid, CONDITION_FIRE)
	talk_state = 0

	
	
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())