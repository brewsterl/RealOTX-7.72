local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg) 			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink() 					npcHandler:onThink()					end

function oracle(cid, message, keywords, parameters, node)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local cityNode = node:getParent():getParent()
	local vocNode = node:getParent()

	local destination = cityNode:getParameters().destination
	local town = cityNode:getParameters().town
	local vocation = vocNode:getParameters().vocation

	if(destination ~= nil and vocation ~= nil and town ~= nil) then
		if(getPlayerLevel(cid) < parameters.level) then
			npcHandler:say('You must first reach level ' .. parameters.level .. '!', cid)
			npcHandler:resetNpc()
		else
			if(getPlayerVocation(cid) > 0) then
				npcHandler:say('Sorry, You already have a vocation!')
				npcHandler:resetNpc()
			else
				doPlayerSetVocation(cid, vocation)
				doPlayerSetTown(cid, town)
				npcHandler:resetNpc()

				local tmp = getCreaturePosition(cid)
				doTeleportThing(cid, destination)
				doSendMagicEffect(tmp, CONST_ME_POFF)
				doSendMagicEffect(destination, CONST_ME_TELEPORT)
			end
		end
	end

	return true
end

function greetCallback(cid)
	if(getPlayerLevel(cid) < 8) then
		npcHandler:say('COME BACK WHEN YOU GROW UP, CHILD!')
		return false
	else
		return true
	end
end
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setMessage(MESSAGE_GREET, 'Hello |PLAYERNAME|. Are you prepared to face your destiny?')

local yesNode = KeywordNode:new({'yes'}, oracle, {level = 8})
local noNode = KeywordNode:new({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, moveup = 1, text = 'Then what vocation do you want to become?'})

local node1 = keywordHandler:addKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'What city do you wish to live in? {Thais}, {Carlin} or {Venore}?'})
	local node2 = node1:addChildKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, town = 5, destination = {x=32360, y=31782, z=7}, text = 'Carlin, eh? So what vocation do you wish to become? {Sorcerer}, {Druid}, {Paladin} or {Knight}?'})
		local node3 = node2:addChildKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, vocation = 1, onlyFocus = true, text = 'So, you wish to be a powerful magician? Are you sure about that? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, vocation = 2, onlyFocus = true, text = 'Are you sure that a druid is what you wish to become? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, vocation = 3, onlyFocus = true, text = 'A ranged marksman. Are you sure? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, vocation = 4, onlyFocus = true, text = 'A mighty warrior. Is that your final decision? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
	node2 = node1:addChildKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, town = 3, destination = {x=32369, y=32241, z=7}, text = 'Thais, eh? So what vocation do you wish to become? {Sorcerer}, {druid}, {paladin} or {knight}?'})
		node3 = node2:addChildKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, vocation = 1, onlyFocus = true, text = 'So, you wish to be a powerful magician? Are you sure about that? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, vocation = 2, onlyFocus = true, text = 'Are you sure that a druid is what you wish to become? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, vocation = 3, onlyFocus = true, text = 'A ranged marksman. Are you sure? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, vocation = 4, onlyFocus = true, text = 'A mighty warrior. Is that your final decision? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
	node2 = node1:addChildKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, town = 4, destination = {x=32957, y=32076, z=7}, text = 'Venore, eh? So what vocation do you wish to become? {Sorcerer}, {druid}, {paladin} or {knight}?'})
		node3 = node2:addChildKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, vocation = 1, onlyFocus = true, text = 'So, you wish to be a powerful magician? Are you sure about that? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, vocation = 2, onlyFocus = true, text = 'Are you sure that a druid is what you wish to become? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, vocation = 3, onlyFocus = true, text = 'A ranged marksman. Are you sure? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
		node3 = node2:addChildKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, vocation = 4, onlyFocus = true, text = 'A mighty warrior. Is that your final decision? This decision is irreversible!'})
			node3:addChildKeywordNode(yesNode)
			node3:addChildKeywordNode(noNode)
keywordHandler:addKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Then come back when you are ready.'})

npcHandler:addModule(FocusModule:new())
