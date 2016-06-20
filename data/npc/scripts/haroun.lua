local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 

-- OTServ event handling functions start 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end 
function onThink()                         npcHandler:onThink() end 
-- OTServ event handling functions end 

local shopModule = ShopModule:new() 
npcHandler:addModule(shopModule) 

shopModule:addSellableItem({'sword ring'}, 2207, 500, 'sword ring') 
shopModule:addSellableItem({'club ring'}, 2209, 500, 'club ring') 
shopModule:addSellableItem({'axe ring'}, 2208, 500, 'axe ring') 
shopModule:addSellableItem({'power ring'}, 2166, 100, 'power ring') 
shopModule:addSellableItem({'stealth ring'}, 2165, 200, 'stealth ring')
shopModule:addSellableItem({'stone skin amulet'}, 2197, 5000, 'stone skin amulet') 
shopModule:addSellableItem({'elven amulet'}, 2198, 500, 'elven amulet') 
shopModule:addSellableItem({'bronze amulet'}, 2172, 100, 'bronze amulet') 
shopModule:addSellableItem({'garlic necklace'}, 2199, 100, 'garlic necklace')  
shopModule:addSellableItem({'magic light wand'}, 2162, 35, 'magic light wand') 
shopModule:addSellableItem({'wand of vortex'}, 2190, 100, 'wand of vortex') 
shopModule:addSellableItem({'wand of dragonbreath'}, 2191, 200, 'wand of dragonbreath') 
shopModule:addSellableItem({'wand of plague'}, 2188, 1000, 'wand of plague') 
shopModule:addSellableItem({'wand of cosmic energy'}, 2189, 2000, 'wand of cosmic energy') 
shopModule:addSellableItem({'wand of inferno'}, 2187, 3000, 'wand of inferno') 
shopModule:addSellableItem({'orb'}, 2176, 750, 'orb') 
shopModule:addSellableItem({'mind stone'}, 2178, 100, 'mind stone') 
shopModule:addSellableItem({'life crystal'}, 2177, 50, 'life crystal') 

shopModule:addBuyableItem({'sword ring'}, 2207, 500, 'sword ring') 
shopModule:addBuyableItem({'club ring'}, 2209, 500, 'club ring') 
shopModule:addBuyableItem({'axe ring'}, 2208, 500, 'axe ring') 
shopModule:addBuyableItem({'power ring'}, 2166, 100, 'power ring') 
shopModule:addBuyableItem({'stealth ring'}, 2165, 5000, 'stealth ring')
shopModule:addBuyableItem({'stone skin amulet'}, 2197, 5000, 'stone skin amulet') 
shopModule:addBuyableItem({'elven amulet'}, 2198, 500, 'elven amulet') 
shopModule:addBuyableItem({'bronze amulet'}, 2172, 100, 'bronze amulet') 
shopModule:addBuyableItem({'garlic necklace'}, 2199, 100, 'garlic necklace') 

npcHandler:addModule(FocusModule:new()) 

keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell and buy different rings and amulets. I also extract magic sulphur from fire swords, warrior\'s sweat from warrior helmets, fighting spirit from royal helmets and enchanted chicken wings from boots of haste.'}) 
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Why would I need that rubbish? Just fooling you... I buy Sword ring, Club ring, Axe ring, Power ring and Stealth rings. Stone skin amulet, Elven amulet, Bronze amulet and Garlic necklace\s. Magic light wand, Wand of Vortex, Wand of Dragonbreath, Wand of Plague, Wand of Cosmic Energy and Wand of Inferno. I also buy Orbs, Mind stones and Life Crystals.'}) 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I seel all kinds of tools.'}) 
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A quest is nothing I want to be involved in.'}) 
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can\'t help you in that area, son.'}) 
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sorry but I do not sell those. Just fooling you... I sell Sword ring, Club ring, Axe ring, Power ring, Stealth rings. Stone Skin amulet, Elven amulet, Bronze amulet and Garlic necklace.'})