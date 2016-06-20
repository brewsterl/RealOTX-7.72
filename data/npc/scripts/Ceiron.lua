local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)    npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()    end


-- Storage IDs --

fdruid        = 22041
sdruid        = 22042

newaddon    = 'Ah, right! The druid bear fur or druid wolf fur! Here you go.'
noitems        = 'You do not have all the required items.'
noitems2    = 'You do not have all the required items or you do not have the outfit, which by the way, is a requirement for this addon.'
already        = 'It seems you already have this addon, don\'t you try to mock me son!'


function DruidSecond(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if isPremium(cid) then
    addon = getPlayerStorageValue(cid,sdruid)
    if addon == -1 then
        if getPlayerItemCount(cid,5937) >= 1 and getPlayerItemCount(cid,5906) >= 100 and getPlayerItemCount(cid,5942) >= 1 and getPlayerItemCount(cid,5940) >= 1 then
        if doPlayerRemoveItem(cid,5937,1) and doPlayerRemoveItem(cid,5906,100) and doPlayerRemoveItem(cid,5942,1) and doPlayerRemoveItem(cid,5940,1) then
            npcHandler:say('Ah, right! The druid bear fur or druid wolf fur! Here you go.')
             
            doSendMagicEffect(getCreaturePosition(cid), 13)
			setPlayerStorageValue(cid,sdruid,1)
			if getPlayerSex(cid) == 1 then 
            doPlayerAddOutfit(cid, 144, 2)
			elseif getPlayerSex(cid) == 0 then
            doPlayerAddOutfit(cid, 148, 2)
        end    
        end
        else
            selfSay(noitems)
        end
    else
        selfSay(already)
    end
    end

end



node1 = keywordHandler:addKeyword({'addon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To get druid bear fur you need give me Griffinclaw flower sample, 100 demon dusts, a blessed wooden stake and Ceirons wolf tooth chain. Do you have them with you?'})
node1:addChildKeyword({'yes'}, DruidSecond, {})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got all neccessary items.', reset = true})

node2 = keywordHandler:addKeyword({'fur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To get druid wolf fur you need give me Griffinclaw flower sample, 100 demon dusts, a blessed wooden stake and Ceirons wolf tooth chain. Do you have them with you?'})
node2:addChildKeyword({'yes'}, DruidSecond, {})
node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got all neccessary items.', reset = true})



npcHandler:addModule(FocusModule:new())