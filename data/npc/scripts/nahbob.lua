local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'dragon lance'}, 2414, 9000, 'dragon lance')
shopModule:addSellableItem({'fire axe'}, 2432, 8000, 'fire axe')
shopModule:addSellableItem({'fire sword'}, 2392, 4000, 'fire sword')
shopModule:addSellableItem({'war hammer'}, 2391, 1200, 'war hammer')
shopModule:addSellableItem({'spike sword'}, 2383, 1000, 'spike sword')
shopModule:addSellableItem({'ice rapier'}, 2396, 1000, 'ice rapier')
shopModule:addSellableItem({'broad sword'}, 2413, 500, 'broad sword')
shopModule:addSellableItem({'obsidian lance'}, 2425, 500, 'obsidian lance')
shopModule:addSellableItem({'crown armor'}, 2487, 12000, 'crown armor')
shopModule:addSellableItem({'blue robe'}, 2656, 10000, 'blue robe')
shopModule:addSellableItem({'noble armor'}, 2486, 900, 'noble armor')
shopModule:addSellableItem({'royal helmet'}, 2498, 30000, 'royal helmet')
shopModule:addSellableItem({'crusader helmet'}, 2497, 6000, 'crusader helmet')
shopModule:addSellableItem({'crown helmet'}, 2491, 2500, 'crown helmet')
shopModule:addSellableItem({'crown legs'}, 2488, 12000, 'crown legs')
shopModule:addSellableItem({'boots of haste'}, 2195, 30000, 'boots of haste')
shopModule:addSellableItem({'phoenix shield'}, 2539, 16000, 'phoenix shield')
shopModule:addSellableItem({'crown shield'}, 2519, 8000, 'crown shield')
shopModule:addSellableItem({'dragon shield'}, 2516, 4000, 'dragon shield')
shopModule:addSellableItem({'guardian shield'}, 2515, 2000, 'guardian shield')
shopModule:addSellableItem({'beholder shield'}, 2518, 1200, 'beholder shield')

shopModule:addBuyableItem({'war hammer'}, 2391, 10000, 'war hammer')
shopModule:addBuyableItem({'spike sword'}, 2383, 8000, 'spikesword')
shopModule:addBuyableItem({'noble armor'}, 2486, 8000, 'noble armor')
shopModule:addBuyableItem({'beholder shield'}, 2518, 7000, 'war hammer')

npcHandler:addModule(FocusModule:new())

keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell and buy different kinds of armors. I also extract magic sulphur from fire swords, warrior\'s sweat from warrior helmets, fighting spirit from royal helmets and enchanted chicken wings from boots of haste.'})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Why would I need that rubbish? Just fooling you... I buy dragon lances, fire axes, fire swords, war hammers, spike swords, ice rapiers, broad swords, obsidian lances, crown armors, blue robes, noble armors, royal helmets, crusader helmets, crown helmets, crown legs, boots of hastes, phoenix shields, crown shields, dragon shields, guardian shields and beholder shields.'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I seel all kinds of tools.'})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A quest is nothing I want to be involved in.'})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can\'t help you in that area, son.'})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sorry but I do not sell those. Just fooling you... I sell war hammers, spike swords, noble armors and beholder shields.'})
