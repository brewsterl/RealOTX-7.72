local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg)

	if(cid ~= npcHandler.focus) then
		return false
	end

	if msgcontains(msg, 'heal') then
		if hasCondition(cid, CONDITION_FIRE) == TRUE then
			npcHandler:say('You are burning. I will help you.')
			doRemoveCondition(cid, CONDITION_FIRE)
			doSendMagicEffect(getCreaturePosition(cid), 14)
		elseif hasCondition(cid, CONDITION_POISON) == TRUE then
			npcHandler:say('You are poisoned. I will help you.')
			doRemoveCondition(cid, CONDITION_POISON)
			doSendMagicEffect(getCreaturePosition(cid), 13)
		elseif getCreatureHealth(cid) < 65 then
			npcHandler:say('You are looking really bad. Let me heal your wounds.')
			doCreatureAddHealth(cid, 65 - getCreatureHealth(cid))
			doSendMagicEffect(getCreaturePosition(cid), 12)
		else
			npcHandler:say('You aren\'t looking really bad, ' .. getCreatureName(cid) .. '. I can only help in cases of real emergencies. Raise your health simply by eating food.')
		end
		return TRUE
	end
end
function onThink()                         npcHandler:onThink() end
-- OTServ event handling functions end
npcHandler:addModule(FocusModule:new())

