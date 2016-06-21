local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

--[[ if msgcontains(msg, 'bp of ultimate healing') then
	npcHandler:say('Do you want to buy a backpack of ultimate healing rune for 2500 gold coins?')
	talk_state = 1
	
		elseif msgcontains(msg, 'yes') and talk_state == 1 then
			if getPlayerMoney(cid) >= 2500 then
				blue_bp = doPlayerAddItem(cid, 2002, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doAddContainerItem(blue_bp, 2273, 1)
				doPlayerRemoveMoney(cid, 2500)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end
	
if msgcontains(msg, 'bp of sudden death') then
	npcHandler:say('Do you want to buy a backpack of sudden death rune for 4500 gold coins?')
	talk_state = 2
	
		elseif msgcontains(msg, 'yes') and talk_state == 2 then
			if getPlayerMoney(cid) >= 4500 then
				grey_bp = doPlayerAddItem(cid, 2003, 1)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doAddContainerItem(grey_bp, 2268, 3)
				doPlayerRemoveMoney(cid, 4500)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end	
	
if msgcontains(msg, 'bp of heavy magic missile') then
	npcHandler:say('Do you want to buy a backpack of heavy magic missile rune for 1000 gold coins?')
	talk_state = 3
	
		elseif msgcontains(msg, 'yes') and talk_state == 3 then
			if getPlayerMoney(cid) >= 1000 then
				purple1_bp = doPlayerAddItem(cid, 2001, 1)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doAddContainerItem(purple1_bp, 2311, 5)
				doPlayerRemoveMoney(cid, 1000)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end

if msgcontains(msg, 'bp of great fireball') then
	npcHandler:say('Do you want to buy a backpack of great fireball rune for 2000 gold coins?')
	talk_state = 4
	
		elseif msgcontains(msg, 'yes') and talk_state == 4 then
			if getPlayerMoney(cid) >= 2000 then
				red_bp = doPlayerAddItem(cid, 2000, 1)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doAddContainerItem(red_bp, 2304, 4)
				doPlayerRemoveMoney(cid, 2000)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end

if msgcontains(msg, 'bp of explosion') or msgcontains(msg, 'bp of explo') then
	npcHandler:say('Do you want to buy a backpack of explosion rune for 3000 gold coins?')
	talk_state = 5
	
		elseif msgcontains(msg, 'yes') and talk_state == 5 then
			if getPlayerMoney(cid) >= 3000 then
				purple2_bp = doPlayerAddItem(cid, 2001, 1)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doAddContainerItem(purple2_bp, 2313, 3)
				doPlayerRemoveMoney(cid, 3000)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end

if msgcontains(msg, 'bp of mf') or msgcontains(msg, 'bp of manafluid') or msgcontains(msg, 'bp of mana fluid') then
	npcHandler:say('Do you want to buy a backpack of mana fluid for 1100 gold coins?')
	talk_state = 6
	
		elseif msgcontains(msg, 'yes') and talk_state == 6 then
			if getPlayerMoney(cid) >= 1100 then
				brown_bp = doPlayerAddItem(cid, 1988, 1)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doAddContainerItem(brown_bp, 2006, 7)
				doPlayerRemoveMoney(cid, 1100)
				npcHandler:say('Thank you for buying.')
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
	end	
	
		return TRUE
end ]]--

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Empty Vial
shopModule:addSellableItem({'empty', 'vial'}, 2006, 5, 'vial')

-- Spell Book

shopModule:addBuyableItem({'spellbook'}, 2175, 150,	'spellbook')

-- Wand

shopModule:addBuyableItem({'light wand', 'lightwand'}, 2163, 500, 'magic light wand')
shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of plague', 'plague'}, 2188, 5000, 'wand of plague')
shopModule:addBuyableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of inferno', 'inferno'}, 2187, 15000, 'wand of inferno')

-- Rods

shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'volcanic rod', 'volcanic'}, 2185, 5000, 'volcanic rod')
shopModule:addBuyableItem({'quagmire rod', 'terra'}, 2181, 10000, 'quagmire rod')
shopModule:addBuyableItem({'tempest rod', 'tempest'}, 2183, 15000, 'tempest rod')

-- Fluids

shopModule:addBuyableItem({'life fluid','lifefluid'}, 2006, 60,10,'life fluid')
shopModule:addBuyableItem({'mana fluid','manafluid'},2006,55,7,'mana fluid')

-- Runas 

shopModule:addBuyableItem({'intense healing rune', 'ih'}, 2265, 95, 1, 'intense healing rune')
shopModule:addBuyableItem({'ultimate healing rune', 'uh'}, 2273, 125, 1, 'ultimate healing rune')
shopModule:addBuyableItem({'magic wall rune'}, 2293, 200, 3, 'magic wall rune')
shopModule:addBuyableItem({'destroy field rune'}, 2261, 45, 3, 'destroy field rune')
shopModule:addBuyableItem({'light magic missile rune'}, 2287, 40, 10, 'light magic missile rune')
shopModule:addBuyableItem({'heavy magic missile rune', 'hmm'}, 2311, 50, 5, 'heavy magic missile rune')
shopModule:addBuyableItem({'great fireball rune', 'gfb'}, 2304, 100, 4, 'great fireball rune')
shopModule:addBuyableItem({'explosion rune', 'explosion'}, 2313, 150, 3, 'explosion rune')
shopModule:addBuyableItem({'sudden death rune', 'sd'}, 2268, 225, 1, 'sudden death rune')
shopModule:addBuyableItem({'death arrow rune'}, 2263, 300, 3, 'death arrow rune')
shopModule:addBuyableItem({'animate dead rune'}, 2316, 375, 1, 'animate dead rune')
shopModule:addBuyableItem({'convince creature rune'}, 2290, 80, 1, 'convince creature rune')
shopModule:addBuyableItem({'chameleon rune'}, 2291, 210, 1, 'chameleon rune')
shopModule:addBuyableItem({'desintegrate'}, 2310, 80,  3, 'desintegreate rune')
shopModule:addBuyableItem({'blank', 'rune'},2260, 10,'blank rune')
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())