local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)	 npcHandler:onCreatureAppear(cid)	 end
function onCreatureDisappear(cid)	 npcHandler:onCreatureDisappear(cid)	 end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()	 npcHandler:onThink()	end

npcHandler:setMessage(MESSAGE_GREET, "Be greeted |PLAYERNAME|.")

function greetCallback(cid)
-- Resetting talkState[talkUser]
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
talkState[talkUser] = 0
return true
end

function creatureSayCallback (cid, type, msg)

if(npcHandler.focus ~= cid) then
return false
end

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

if(msgcontains(msg, 'key') or msgcontains(msg, 'door')) then
npcHandler:say("Do you want to buy the dungeon key for 2000 gold?",cid)
talkState[talkUser] = 1
elseif(msgcontains(msg, "yes") and talkState[talkUser] == 1) then
if doPlayerRemoveMoney(cid, 2000) == TRUE then -- edit the amount of gold here
key = doPlayerAddItem(cid,2089,1)
doSetItemActionId(key, 3940)
npcHandler:say("Here you go.",cid)
talkState[talkUser] = 0
else
npcHandler:say("You don't have enough money.", cid)
talkState[talkUser] = 0
end
elseif(talkState[talkUser] == 1) then
npcHandler:say("Believe me, it's better for you that way.", cid)
talkState[talkUser] = 0
end
return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())