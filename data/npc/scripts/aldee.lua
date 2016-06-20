local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- NPC Al Dee feito por Rodrigo (Nottinghster)
	-- Inicio Al Dee NPC
	
	if msgcontains(msg, 'pick') then
	npcHandler:say('Picks are hard to come by. I trade them only for high quality small axes. Do you want to trade?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,2559) >= 1 then
	npcHandler:say('Splendid! Here take your pickaxe.')
	doPlayerRemoveItem(cid,2559,1)
	doPlayerAddItem(cid,2553,1)
       setPlayerStorageValue(cid,3029,1)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,2559) == 0 then
	npcHandler:say('Sorry, I am looking for a SMALL axe.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Well, then not.')
	talk_state = 0
	
	end
	-- Final Al Dee NPC
	-- NPC Al Dee feito por Rodrigo (Nottinghster)
	return true
end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

--Sellable
shopModule:addSellableItem({'leather armor'},2467,5,'leather armor')
shopModule:addSellableItem({'chain armor'},2464,40,'chain armor')
shopModule:addSellableItem({'brass armor'},2465,150,'brass armor')
shopModule:addSellableItem({'leather helmet'},2461,3,'leather helmet')
shopModule:addSellableItem({'chain helmet'},2458,12,'chain helmet')
shopModule:addSellableItem({'studded helmet'},2482,20,'studded helmet')
shopModule:addSellableItem({'wooden shield'},2512,3,'wooden shield')
shopModule:addSellableItem({'studded shield'},2526,16,'studded shield')
shopModule:addSellableItem({'brass shield'},2511,25,'brass shield')
shopModule:addSellableItem({'plate shield'},2510,40,'plate shield')
shopModule:addSellableItem({'copper shield'},2530,50,'copper shield')
shopModule:addSellableItem({'leather boots'},2643,2,'leather boots')
shopModule:addSellableItem({'hand axe'},2380,4,'hand axe')
shopModule:addSellableItem({'short sword'},2406,10,'short sword')
shopModule:addSellableItem({'dagger'},2379,2,'dagger')
shopModule:addSellableItem({'spear'},2389,3,'spear')
shopModule:addSellableItem({'rapier'},2384,5,'rapier')
shopModule:addSellableItem({'axe'},2380,7,'axe')
shopModule:addSellableItem({'hatchet'},2388,25,'hatchet')
shopModule:addSellableItem({'sabre'},2385,12,'sabre')
shopModule:addSellableItem({'sword'},2376,25,'sword')
shopModule:addSellableItem({'mace'},2398,30,'mace')
shopModule:addSellableItem({'doublet'},2485,3,'doublet')
shopModule:addSellableItem({'rope'},2120,8,'rope')

--Buyable
shopModule:addBuyableItem({'short sword'},2406,30,'short sword')
shopModule:addBuyableItem({'hand axe'},2380,8,'hand axe')
shopModule:addBuyableItem({'fishing rod','rod'},2580,150,'fishing rod')
shopModule:addBuyableItem({'leather armor'},2467,25,'leather armor')
shopModule:addBuyableItem({'leather legs'},2649,10,'leather legs')
shopModule:addBuyableItem({'leather helmet'},2461,12,'leather helmet')
shopModule:addBuyableItem({'studded helmet'},2482,63,'studded helmet')
shopModule:addBuyableItem({'chain helmet'},2458,52,'chain helmet')
shopModule:addBuyableItem({'wooden shield'},2512,15,'wooden shield')
shopModule:addBuyableItem({'studded shield'},2526,50,'sttuded shield')
shopModule:addBuyableItem({'spear'},2389,10,'spear')
shopModule:addBuyableItem({'rapier'},2384,15,'rapier')
shopModule:addBuyableItem({'sabre'},2385,25,'sabre')
shopModule:addBuyableItem({'dagger'},2379,5,'dagger')
shopModule:addBuyableItem({'sickle'},2405,8,'sickle')
shopModule:addBuyableItem({'axe'},2386,20,'axe')
shopModule:addBuyableItem({'jacket'},2650,10,'jacket')
shopModule:addBuyableItem({'coat'},2651,8,'coat')
shopModule:addBuyableItem({'doublet'},2485,16,'doublet')
shopModule:addBuyableItem({'torch'},2050,2,'torch')
shopModule:addBuyableItem({'bag'},1987,4,'bag')
shopModule:addBuyableItem({'scroll'},1949,5,'scroll')
shopModule:addBuyableItem({'shovel'},2554,10,'shovel')
shopModule:addBuyableItem({'backpack'},1988,10,'backpack')
shopModule:addBuyableItem({'scythe'},2550,12,'scythe')
shopModule:addBuyableItem({'rope'},2120,50,'rope')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())