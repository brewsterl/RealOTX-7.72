local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

local itemgive    = 'Here you go.'
local noitems        = 'You do not have the White Mushroom!'

npcHandler:setMessage(MESSAGE_GREET, "Greetings, |PLAYERNAME|. You got a {white mushroom} for me?")

function lifecrystalTrade(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

        if getPlayerItemCount(cid,2787) >= 1 then
        if doPlayerRemoveItem(cid,2787,1) then
            npcHandler:say(itemgive)
            doPlayerAddItem(cid,2319,1)
        end
        else
            npcHandler:say(noitems)
        end
    end

keywordHandler:addKeyword({'white mushroom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You really got one? I need them to stay alive. If you want to trade one for a dragonfetish say trade."})

local node1 = keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want give me a White Mushroom for a Dragonfetish?'})
    node1:addChildKeyword({'yes'}, lifecrystalTrade, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Ok then.', reset = true})

npcHandler:addModule(FocusModule:new())  