local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- sell part
shopModule:addSellableItem({'crossbow'}, 2455, 160, 'crossbow')
shopModule:addSellableItem({'bow'}, 2456, 130, 'bow')
shopModule:addSellableItem({'viking', 'viking helmet'}, 2473, 66, 'viking helmet')
shopModule:addSellableItem({'mace', 'mace'}, 2398, 30, 'mace')
shopModule:addSellableItem({'hatchet', 'hatchet'}, 2388, 25, 'hatchet')

-- buy part
shopModule:addBuyableItem({'torch','torch'}, 2051, 3,1,'torch')
shopModule:addBuyableItem({'scroll','scroll'}, 1949, 10,1,'scroll')
shopModule:addBuyableItem({'document','document'}, 1952, 12,1,'document')
shopModule:addBuyableItem({'parchment','parchment'}, 1948, 8,1,'parchment')
shopModule:addBuyableItem({'rope','rope'}, 2120, 65,1,'rope')
shopModule:addBuyableItem({'rod','rod'}, 2580, 170,1,'rod')
shopModule:addBuyableItem({'arrow','arrow'}, 2544, 3,1,'arrow')
shopModule:addBuyableItem({'bolt','bolt'}, 2543, 4,1,'bolt')
shopModule:addBuyableItem({'viking','viking helmet'}, 2473, 265,1,'viking helmet')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())