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
	
	-- NPC Seymour feito por Rodrigo (Nottinghster)
	-- Inicio NPC Seymour
	
	local player_gold     = getPlayerItemCount(cid,2148)
    local player_plat     = getPlayerItemCount(cid,2152)*100
    local player_crys     = getPlayerItemCount(cid,2160)*10000
    local player_money    = player_gold + player_plat + player_crys
	
	if msgcontains(msg, 'dungeon') and getPlayerLevel(cid) < 3 then
	selfSay('There are some dungeons on this isle, but almost all of them are too dangerous for you at the moment.')
	
	elseif msgcontains(msg, 'dungeon') and getPlayerLevel(cid) > 2 then
	selfSay('There are some dungeons on this isle. You should be strong enough to explore them now, but make sure to take a rope with you.')

	elseif msgcontains(msg, 'mission') or msgcontains(msg, 'quest') and getPlayerLevel(cid) < 4 then
	selfSay('You are pretty inexperienced. I think killing rats is a suitable challenge for you. For each fresh rat I will give you two shiny coins of gold.')
	
	elseif msgcontains(msg, 'mission') or msgcontains(msg, 'quest') and getPlayerLevel(cid) > 3 then
	selfSay('Well I would like to send our king a little present, but I do not have a suitable box. If you find a nice box, please bring it to me.')
	
	elseif msgcontains(msg, 'key') then
	selfSay('Do you want to buy the Key to Adventure for 5 gold coins?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and player_money >= 5 then
	selfSay('Here you are.')
	doPlayerRemoveMoney(cid, 5)
	key = doPlayerAddItem(cid, 2088,1)
	doSetItemActionId(key,4600)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and player_money < 5 then
	selfSay('You don\'t have enough money.')
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	selfSay('As you wish.')
	talk_state = 0
	
	elseif msgcontains(msg, 'box') then
	selfSay('Do you have a suitable present box for me?')
	talk_state = 2
	
	elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerItemCount(cid,1990) >= 1 then
	selfSay('THANK YOU! Here is a helmet that will serve you well.')
	doPlayerRemoveItem(cid, 1990, 1)
	doPlayerAddItem(cid, 2480, 1)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerItemCount(cid,1990) == 0 then
	selfSay('HEY! You don\'t have one! Stop playing tricks on fooling me or I will give you some extra work!')
	talk_state = 0
	
	elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 2) then
	selfSay('See you later.')
	talk_state = 0
	
	end
	-- Final Seymour NPC
	-- NPC Seymour feito por Rodrigo (Nottinghster)
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())