local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end


local node1 = keywordHandler:addKeyword({'embrace of tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the embrace of tibia for 10000 gold?'})
	node1:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 1, premium = 1, cost = 10000})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

npcHandler:addModule(FocusModule:new())