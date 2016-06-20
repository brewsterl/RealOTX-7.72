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

	
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

 -- buy

shopModule:addBuyableItem({'cheese'},2696,5,'cheese')
shopModule:addBuyableItem({'cherry'},2679,1,'cherry')
shopModule:addBuyableItem({'melon'},2682,8,'melon')
shopModule:addBuyableItem({'pumpkin'},2683,10,'pumpkin')

 --sell

shopModule:addSellableItem({'bread'},2689,2,'bread')
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
end