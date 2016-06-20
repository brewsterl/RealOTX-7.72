local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Food
shopModule:addBuyableItem({'Meat'}, 2666, 10, 1)
shopModule:addBuyableItem({'Ham'}, 2671, 15, 1) 
shopModule:addBuyableItem({'Dragon Ham'}, 2672, 25, 1)
shopModule:addBuyableItem({'Brown Mushroom'}, 2789, 10, 1) 


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
