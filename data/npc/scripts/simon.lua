local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function SimonGreetCallback(cid)
    talkState[talkUser] = 0
    return 1
end
 
function SimonHehaviour (cid, type, msg)
 
        if(npcHandler.focus ~= cid) then
                return false
        end
 
        if(msgcontains(msg, "help")) then
                npcHandler:say("I need gold. Can you spend me 100 gold pieces?",cid)
                talkState[talkUser] = 1
        elseif(msgcontains(msg, "yes")) and (talkState[talkUser] == 1) then
            if (doPlayerRemoveMoney(cid, 100) == TRUE) then
                npcHandler:say("Thank you very much. Can you spend me 500 more gold pieces? I will give you a nice hint.",cid)
                talkState[talkUser] = 2
            else
                npcHandler:say("You've not enough money for me.",cid)
                talkState[talkUser] = 0
            end

        elseif(msgcontains(msg, "yes")) and (talkState[talkUser] == 2) then
            if (doPlayerRemoveMoney(cid, 500) == TRUE) then
                npcHandler:say("That's great! I have stolen something from Dermot. You can buy it for 200 gold. Do you want to buy it?",cid)
                talkState[talkUser] = 3
            else
                npcHandler:say("Sorry, that's not enough.",cid)
                talkState[talkUser] = 0
            end
        elseif(msgcontains(msg, "yes")) and (talkState[talkUser] == 3) then
            if (doPlayerRemoveMoney(cid, 200) == TRUE) then
                npcHandler:say("Now you own the hot key.",cid)
                key = doPlayerAddItem(cid,2087,1)
                doSetItemActionId(key, 3940)
                talkState[talkUser] = 0
            else
                npcHandler:say("Pah! I said 200 gold. You don't have so much.",cid)
                talkState[talkUser] = 0
            end

        elseif(talkState[talkUser] == 1) then
                npcHandler:say("Hmm, maybe next time.", cid)
                talkState[talkUser] = 0

        elseif(talkState[talkUser] == 2) then
                npcHandler:say("It was your decision.", cid)
                talkState[talkUser] = 0

        elseif(talkState[talkUser] == 3) then
                npcHandler:say("Ok. No problem. I'll find another buyer.", cid)
                talkState[talkUser] = 0
        end

local keywords = {
["dermot"] = {response = "The magistrate of the village. I heard he is selling something for the Fibula Dungeon."},
["village"] = {response = "To the north is the village Fibula. A very small village."},
["key"] = {response = "Key? There are a lot of keys. Please change the topic."},
["dungeon"] = {response = "I heard a lot about the Fibula Dungeon. But I never was there."},
["fibula"] = {response = "I hate Fibula. Too many wolves are here."},
["timur"] = {response = "I hate Timur. He is too expensive. But sometimes I find maces and hatchets. Timur is buying these items."},
["wolf"] = {response = "Please kill them ... ALL."},
["flute"] = {response = "Har, har. The stupid Dermot lost his flute. I know that some minotaurs have it in their treasure room."},
["minotaurs"] = {response = "Very rich monsters. But they are too strong for me. However, there are even stronger monsters."},
["minos"] = {response = "Very rich monsters. But they are too strong for me. However, there are even stronger monsters."},
["treasure"] = {response = "I know there are two rooms. And I know you can pass only the first door. The second door can't be opened."},
["giant spider"] = {response = "I know that terrible monster. It killed the fishers on the isle to the north."},
["monster"] = {response = "The strongest monster I know is the giant spider."},
["jetty"] = {response = "I hate this jetty. I have never seen a ship here."},
["ship"] = {response = "There is a large sea-monster outside. I think there is no gritty captain to sail in this quarter."},
["tibia"] = {response = "Hehe, do you have a shovel? I can sell you a shovel if you want to return to Tibia."},
["job"] = {response = "I have no job. I am a beggar."},
["beggar"] = {response = "I have no gold and no job, so I am a beggar."},
["gold"] = {response = "I need gold. I love gold. I need help."},
["name"] = {response = "My name is Simon. I am a very poor man."},
["simon"] = {response = "I am Simon. The poorest human all over the continent."},
}
  for v in pairs(keywords) do
    if (msgcontains(msg, v)) then
        npcHandler:say(keywords[v].response, cid)
        npcHandler:doTopic(cid, 0)
    end
  end
  return 1
end
 
npcHandler:setCallback(CALLBACK_GREET, SimonGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, SimonHehaviour)
npcHandler:addModule(FocusModule:new())