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
	
	if msgcontains(msg, 'how are you') then
	npcHandler:say('Thank you very much. How kind of you to care about me. I am fine, thank you.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 1
	elseif msgcontains(msg, 'sell') then
	npcHandler:say('Sorry, I have nothing to sell.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 2
	elseif msgcontains(msg, 'job') then
	npcHandler:say('I do some work now and then. Nothing unusual, though.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 3
	elseif msgcontains(msg, 'name') then
	npcHandler:say('I am a little sad, that you seem to have forgotten me, handsome. I am Aruda.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 4
	elseif msgcontains(msg, 'aruda') then
	npcHandler:say('Oh, I like it, how you say my name.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 5
	elseif msgcontains(msg, 'time') then
	npcHandler:say('Please don\'t be so rude to look for the time if you are talking to me.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 6
	elseif msgcontains(msg, 'help') then
	npcHandler:say('I am deeply sorry, I can\'t help you.')
	doPlayerRemoveMoney(cid,5)
	talk_state = 7
	
	
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())