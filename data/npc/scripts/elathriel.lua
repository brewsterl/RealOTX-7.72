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
	
	-- NPC Simon (Deeper Fibula Quest) feito por Rodrigo (Nottinghster)
	-- Inicio Simon NPC
	
	local player_gold     = getPlayerItemCount(cid,2148)
    local player_plat     = getPlayerItemCount(cid,2152)*100
    local player_crys     = getPlayerItemCount(cid,2160)*10000
    local player_money    = player_gold + player_plat + player_crys
	
	if msgcontains(msg, 'key') then
	selfSay(' If you are that curious, do you want to buy a key for 5000 gold? Don\'t blame me if you get sucked in.')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and player_money >= 5000 then
	selfSay('Here it is.')
	doPlayerRemoveMoney(cid, 5000)
	key = doPlayerAddItem(cid, 2087,1)
	doSetItemActionId(key,3012)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and player_money < 5000 then
	selfSay('You dont have enought money.')
	
	elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 3) then
	selfSay('Have a nice day.')
	talk_state = 0
	
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

