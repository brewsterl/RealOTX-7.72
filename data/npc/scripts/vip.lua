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
	
	-- NPC Captain Fearless Venore Boat feito por Rodrigo (Nottinghster)
	local venore = {x=32954,y=32023,z=6, stackpos=0}
	local thais = {x=32312,y=32211,z=6, stackpos=0}
	local carlin = {x=32387,y=31821,z=6, stackpos=0}
	local abdendriel = {x=32733,y=31668,z=6, stackpos=0}
	local darashia = {x=33290,y=32481,z=6, stackpos=0}
	local edron = {x=33175,y=31764,z=6, stackpos=0}
	local ankrahmun = {x=33091,y=32883,z=6, stackpos=0}
	local porthope = {x=32530,y=32784,z=6, stackpos=0}
	local ghostship = {x=33330,y=32172,z=5, stackpos=0}
	
	
	-- Vip
	if msgcontains(msg, 'vip') or msgcontains(msg, 'Vip') then
	if getPlayerStorageValue(cid,30009) == 1 then
	npcHandler:say('Do you seek a passage to vip island for free?')
	talk_state = 1
	else
	npcHandler:say('You are not VIP.')
	talk_state = 1
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 1 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 0 then
				if getPlayerStorageValue(cid,30009) == 1 then
					selfSay('Set the sails!')
					doTeleportThing(cid, vip)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('You are ot VIP.')
					
				
					
					talk_state = 0
				end	
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end
	
	-- Carlin
	if msgcontains(msg, 'carlin') or msgcontains(msg, 'Carlin') then
	if getPlayerStorageValue(cid,30009) == 1 or getPlayerStorageValue(cid,30009) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
	npcHandler:say('Do you seek a passage to Carlin for free?')
	talk_state = 2
	else
	npcHandler:say('Do you seek a passage to Carlin for 130 gold?')
	talk_state = 2
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 2 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 130 then
				if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
					selfSay('Set the sails!')
					doTeleportThing(cid, carlin)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 130)
					doTeleportThing(cid, carlin)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end	
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end
	
	-- Ab'Dendriel
	if msgcontains(msg, 'ab\'dendriel') or msgcontains(msg, 'Ab\'dendriel') then
	if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
	npcHandler:say('Do you seek a passage to Ab\'Dendriel for free?')
	talk_state = 3
	else
	npcHandler:say('Do you seek a passage to Ab\'dendriel for 90 gold?')
	talk_state = 3
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 3 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 90 then
				if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
					selfSay('Set the sails!')
					doTeleportThing(cid, abdendriel)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 90)
					doTeleportThing(cid, abdendriel)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end	
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end
	
	-- Darashia
	if msgcontains(msg, 'darashia') or msgcontains(msg, 'Darashia') then
	if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
	npcHandler:say('Do you seek a passage to Darashia for free?')
	talk_state = 4
	else
	npcHandler:say('Do you seek a passage to Darashia for 60 gold?')
	talk_state = 4
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 4 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 60 then
				if math.random(1,10) == 1 then
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 60)
					doTeleportThing(cid, ghostship)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 60)
					doTeleportThing(cid, darashia)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end
			else
				npcHandler:say('You don\'t have enough money.')
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end
	
	-- Edron
	if msgcontains(msg, 'edron') or msgcontains(msg, 'edron') then
	if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
	npcHandler:say('Do you seek a passage to Edron for free?')
	talk_state = 5
	else
	npcHandler:say('Do you seek a passage to Edron for 40 gold?')
	talk_state = 5
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 5 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 40 then
				if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
					selfSay('Set the sails!')
					doTeleportThing(cid, edron)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 40)
					doTeleportThing(cid, edron)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end	
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end
	
	-- Ankrahmun
	if msgcontains(msg, 'ankrahmun') or msgcontains(msg, 'Ankrahmun') then
	if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
	npcHandler:say('Do you seek a passage to Ankrahmun for free?')
	talk_state = 6
	else
	npcHandler:say('Do you seek a passage to Ankrahmun for 150 gold?')
	talk_state = 6
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 6 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 150 then
				if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
					selfSay('Set the sails!')
					doTeleportThing(cid, ankrahmun)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 150)
					doTeleportThing(cid, ankrahmun)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end	
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end
	
	-- Port Hope
	if msgcontains(msg, 'port hope') or msgcontains(msg, 'Port Hope') then
	if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
	npcHandler:say('Do you seek a passage to Port Hope for free?')
	talk_state = 7
	else
	npcHandler:say('Do you seek a passage to Port Hope for 160 gold?')
	talk_state = 7
	end
	
	elseif msgcontains(msg,'yes') and talk_state == 7 then
	-- if isPremium(cid) == TRUE then
		if hasCondition(cid, CONDITION_INFIGHT) ~= 1 then
			if getPlayerMoney(cid) >= 160 then
				if getPlayerStorageValue(cid,30010) == 1 or getPlayerStorageValue(cid,30011) == 1 or getPlayerStorageValue(cid,30012) == 1 or getPlayerStorageValue(cid,30013) == 1 then
					selfSay('Set the sails!')
					doTeleportThing(cid, porthope)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, 160)
					doTeleportThing(cid, porthope)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end	
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	--[[ else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end --]]
end

	return TRUE	
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())