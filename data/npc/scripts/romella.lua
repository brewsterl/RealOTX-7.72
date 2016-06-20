local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Itens para vender
shopModule:addSellableItem({'double axe'},2387,260,'battle axe')
shopModule:addSellableItem({'battle axe'},2378,80,'battle axe')
shopModule:addSellableItem({'battle hammer'},2417,120,'battle hammer')
shopModule:addSellableItem({'morning star'},2394,90,'morning star')
shopModule:addSellableItem({'short sword'},2406,10,'short sword')
shopModule:addSellableItem({'hand axe'},2380,4,'hand axe')
shopModule:addSellableItem({'axe'},2386,7,'axe')
shopModule:addSellableItem({'dagger'},2379,2,'dagger')
shopModule:addSellableItem({'halberd'},2381,400,'halberd')
shopModule:addSellableItem({'mace'},2398,30,'mace')
shopModule:addSellableItem({'rapier'},2384,5,'rapier')
shopModule:addSellableItem({'sabre'},2385,12,'sabre')
shopModule:addSellableItem({'spear'},2389,3,'spear')
shopModule:addSellableItem({'sword'},2376,25,'sword')

-- Itens para comprar
shopModule:addBuyableItem({'hand axe'},2380,8,'hand axe')
shopModule:addBuyableItem({'battle hammer'},2417,350,'battle hammer')
shopModule:addBuyableItem({'throwing knife'},2410,25,'throwing knife')
shopModule:addBuyableItem({'axe'},2386,20,'axe')
shopModule:addBuyableItem({'dagger'},2379,5,'dager')
shopModule:addBuyableItem({'mace'},2398,90,'mace')
shopModule:addBuyableItem({'machete'},2420,35,'machete')
shopModule:addBuyableItem({'rapier'},2384,15,'rapier')
shopModule:addBuyableItem({'sabre'},2385,35,'sabre')
shopModule:addBuyableItem({'spear'},2389,10,'spear')
shopModule:addBuyableItem({'sword'},2376,85,'sword')


npcHandler:addModule(FocusModule:new())