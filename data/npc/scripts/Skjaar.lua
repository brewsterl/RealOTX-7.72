local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)	 npcHandler: onCreatureAppear(cid)	 end
function onCreatureDisappear(cid)	 npcHandler: onCreatureDisappear(cid)	 end
function onCreatureSay(cid, type, msg)	npcHandler: onCreatureSay(cid, type, msg)	end
function onThink()	 npcHandler: onThink()	end

npcHandler:setMessage(MESSAGE_GREET, "It's good to see somebody who has chosen the path of wisdom. What do you want? ")

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

if(msgcontains(msg, "key")) then
npcHandler:say("I will give the key to the crypt only to the closest followers of my master. Would you like me to test you?",cid)	
talkState[talkUser] = 2

elseif(msgcontains(msg, "yes") and talkState[talkUser] == 2) then
npcHandler:say("Before we start I must ask you for a small donation of 1000 gold coins. Are you willing to pay 1000 gold coins for the test?",cid)	
talkState[talkUser] = 3

elseif(msgcontains(msg, "yes") and talkState[talkUser] == 3) then
if doPlayerRemoveMoney(cid, 1000) == TRUE then
npcHandler:say("All right then. Here comes the first question. What was the name of Dago's favourite pet?",cid)
talkState[talkUser] = 4

elseif(msgcontains(msg, "redips") and talkState[talkUser] == 4) then
npcHandler:say("Perhaps you knew him after all. Tell me - how many fingers did he have when he died?",cid)	
talkState[talkUser] = 5

elseif(msgcontains(msg, "7") and talkState[talkUser] == 5) then
npcHandler:say("Also true. But can you also tell me the colour of the deamons in which master specialized?",cid)	
talkState[talkUser] = 6

elseif(msgcontains(msg, "black") and talkState[talkUser] == 6) then
npcHandler:say("It seems you are worthy after all. Do you want the key to the crypt?",cid)	
talkState[talkUser] = 7

elseif(msgcontains(msg, "yes") and talkState[talkUser] == 7) then
key = doPlayerAddItem(cid,2089,1)
doSetItemActionId(key, 3142)
npcHandler:say("Here you go.",cid)
talkState[talkUser] = 8
end
end
return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())