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
shopModule:addSellableItem({'battle axe'},2378,75,'battle axe')
shopModule:addSellableItem({'battle hammer'},2417,50,'battle hammer')
shopModule:addSellableItem({'carlin sword'},2395,118,'carlin sword')
shopModule:addSellableItem({'double axe'},2387,260,'double axe')
shopModule:addSellableItem({'morning star'},2394,100,'morning star')
shopModule:addSellableItem({'short sword'},2406,8,'short sword')
shopModule:addSellableItem({'two handed sword'},2377,190,'two handed sword')
shopModule:addSellableItem({'war hammer'},2391,470,'war hammer')
shopModule:addSellableItem({'club'},2382,1,'club')
shopModule:addSellableItem({'dagger'},2379,1,'dagger')
shopModule:addSellableItem({'halberd'},2381,310,'halberd')
shopModule:addSellableItem({'mace'},2398,23,'mace')
shopModule:addSellableItem({'rapier'},2384,3,'rapier')
shopModule:addSellableItem({'sabre'},2385,5,'sabre')
shopModule:addSellableItem({'spear'},2389,1,'spear')
shopModule:addSellableItem({'sword'},2376,15,'sword')

-- Itens para comprar
shopModule:addBuyableItem({'battle axe'},2378,235,'battle axe')
shopModule:addBuyableItem({'battle hammer'},2417,350,'battle hammer')
shopModule:addBuyableItem({'carlin sword'},2395,473,'carlin sword')
shopModule:addBuyableItem({'morning star'},2394,430,'morning star')
shopModule:addBuyableItem({'throwing knife'},2410,25,'throwing knight')
shopModule:addBuyableItem({'two handed sword'},2377,950,'two handed sword')
shopModule:addBuyableItem({'club'},2382,5,'club')
shopModule:addBuyableItem({'dagger'},2379,5,'dagger')
shopModule:addBuyableItem({'mace'},2398,90,'mace')
shopModule:addBuyableItem({'rapier'},2384,15,'rapier')
shopModule:addBuyableItem({'sabre'},2385,25,'sabre')
shopModule:addBuyableItem({'spear'},2389,10,'spear')
shopModule:addBuyableItem({'sword'},2376,85,'sword')

npcHandler:addModule(FocusModule:new())