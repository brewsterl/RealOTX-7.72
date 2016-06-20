local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

-- XVX FORGER START --

function amulet(cid, message, keywords, parameters, node)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
        if getPlayerItemCount(cid,8262) >= 1 and getPlayerItemCount(cid,8263) >= 1 and getPlayerItemCount(cid,8264) >= 1 and  getPlayerItemCount(cid,8265) >= 1 then
        if doPlayerRemoveItem(cid,8262,1) and doPlayerRemoveItem(cid,8263,1) and doPlayerRemoveItem(cid,8264,1) and  doPlayerRemoveItem(cid,8265,1) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,8266,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
    end
end

function obsidian(cid, message, keywords, parameters, node)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
        if getPlayerItemCount(cid,2516) >= 1 and getPlayerItemCount(cid,2425) >= 1 then
        if doPlayerRemoveItem(cid,2516,1) and doPlayerRemoveItem(cid,2425,1) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5908,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
    end
end	

function crude(cid, message, keywords, parameters, node)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
        if getPlayerItemCount(cid,2393) >= 1 then
        if doPlayerRemoveItem(cid,2393,1) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5892,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
    end
end

function draconian(cid, message, keywords, parameters, node)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
        if getPlayerItemCount(cid,2516) >= 1 then
        if doPlayerRemoveItem(cid,2516,1) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5889,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
   end   
end

-- XVX FORGER END --

keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can forge Amulet, Obsidian Knife, Huge Chunk of Crude Iron and Piece of Draconian Steel!"})

local node1 = keywordHandler:addKeyword({'amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Hum Humm! Welcume lil. Me can do unbroken but Big Ben want gold 5000 and Big Ben need a lil time to make it unbroken. Yes or no??'})
    node1:addChildKeyword({'yes'}, amulet, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

local node2 = keywordHandler:addKeyword({'obsidian'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade a Dragon Shield and an Obsidian Lance for a Obsidian Knife?'})
    node2:addChildKeyword({'yes'}, obsidian, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

local node3 = keywordHandler:addKeyword({'crude'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade a Giant Sword for a Huge Chunk of Crude Iron?'})
    node3:addChildKeyword({'yes'}, crude, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node3:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})
	
local node4 = keywordHandler:addKeyword({'draconian'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade a Dragon Shield for a Piece of Draconian Steel?'})
    node4:addChildKeyword({'yes'}, draconian, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node4:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

npcHandler:addModule(FocusModule:new())