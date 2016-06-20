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
 
	--------- ESPADAS ---------
 	if msgcontains(msg, 'swords list') then
	npcHandler:say('I sell Combat Knife, Silver Dagger, Short Sword, Sabre, Bone Sword, Carlin Sword, Heavy Machete, Katana, Longsword, Poison Dagger, Scimitar, Templar Scytheblade, Broad Sword, Serpent Sword, Two-Handed Sword, Fire Sword, Bright Sword, Giant Sword, Magic Sword, Warlord Sword, Magic Long Sword, Ice Rapier.')
 	talk_start = 1
 	end

    if msgcontains(msg, 'combat knife') then
	item = 2404
	price = 15
	npcHandler:say('Do you want to buy a Combat Knife for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end
 
 	if msgcontains(msg, 'silver dagger') then
	item = 2402
	price = 20
	npcHandler:say('Do you want to buy a Silver Dagger for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end
 
 	if msgcontains(msg, 'short sword') then
	item = 2406
	price = 30
	npcHandler:say('Do you want to buy a Short Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end
 
 	if msgcontains(msg, 'sabre') then
	item = 2385
	price = 35
	npcHandler:say('Do you want to buy a Sabre for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end
 
 	if msgcontains(msg, 'bone sword') then
	item = 2450
	price = 40
	npcHandler:say('Do you want to buy a Bone Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'carlin sword') then
	item = 2395
	price = 45
	npcHandler:say('Do you want to buy a Carlin Sword for ' .. price .. ' Gold Coins?')
	talk_start = 1
 	end
 
 	if msgcontains(msg, 'heavy machete') then
	item = 2442
	price = 70
	npcHandler:say('Do you want to buy a Heavy Machete for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end
 
 	if msgcontains(msg, 'katana') then
	item = 2412
	price = 80
	npcHandler:say('Do you want to buy a Katana for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'longsword') then
	item = 2397
	price = 100
	npcHandler:say('Do you want to buy a Longsword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'poison dagger') then
	item = 2411
	price = 120
	npcHandler:say('Do you want to buy a Poison Dagger for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'scimitar') then
	item = 2419
	price = 150
	npcHandler:say('Do you want to buy a Scimitar for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'templar scytheblade') then
	item = 3963
	price = 500
	npcHandler:say('Do you want to buy a Templar Scytheblade for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'broad sword') then
	item = 2413
	price = 300
	npcHandler:say('Do you want to buy a Broad Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'serpent sword') then
	item = 2409
	price = 600
	npcHandler:say('Do you want to buy a Serpent Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'two-handed sword') then
	item = 2377
	price = 800
	npcHandler:say('Do you want to buy a Two-Handed Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'fire sword') then
	item = 2392
	price = 5000
	npcHandler:say('Do you want to buy a Fire Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'bright sword') then
	item = 2407
	price = 15000
	npcHandler:say('Do you want to buy a Bright Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'giant sword') then
	item = 2393
	price = 20000
	npcHandler:say('Do you want to buy a Giant Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'magic sword') then
	item = 2400
	price = 150000
	npcHandler:say('Do you want to buy a Magic Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'warlord sword') then
	item = 2408
	price = 250000
	npcHandler:say('Do you want to buy a Warlord Sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'magic long sword') then
	item = 2390
	price = 400000
	npcHandler:say('Do you want to buy a Magic Long sword for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ice rapier') then
	item = 2396
	price = 3000
	npcHandler:say('Do you want to buy a Ice Rapier for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- CLUBS ---------
 	if msgcontains(msg, 'clubs list') then
		npcHandler:say('I sell Crowbar, Scythe, Studded Club, Bone Club, Iron Hammer, Daramanian Mace, Battle Hammer, Morning Star, Banana Staff, Clerical Mace, Dragon Hammer, Skull Staff, Crystal Mace, Silver Mace, War Hammer, Hammer of Wrath and Thunder Hammer.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'crowbar') then
	item = 2416
	price = 100
	npcHandler:say('Do you want to buy a Crowbar for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'scythe') then
	item = 2550
	price = 10
	npcHandler:say('Do you want to buy a Scythe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'studded club') then
	item = 2448
	price = 15
	npcHandler:say('Do you want to buy a Studded Club for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'bone club') then
	item = 2449
	price = 25
	npcHandler:say('Do you want to buy a Bone Club for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'iron hammer') then
	item = 2422
	price = 80
	npcHandler:say('Do you want to buy a Iron Hammer for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'daramanian mace') then
	item = 2439
	price = 100
	npcHandler:say('Do you want to buy a Daramanian Mace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'battle hammer') then
	item = 2417
	price = 120
	npcHandler:say('Do you want to buy a Battle Hammer for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'morning star') then
	item = 2394
	price = 150
	npcHandler:say('Do you want to buy a Morning Star for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'banana staff') then
	item = 3966
	price = 500
	npcHandler:say('Do you want to buy a Banana Staff for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'clerical mace') then
	item = 2423
	price = 400
	npcHandler:say('Do you want to buy a Clerical Mace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragon hammer') then
	item = 2434
	price = 3000
	npcHandler:say('Do you want to buy a Dragon Hammer for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'skull staff') then
	item = 2436
	price = 10000
	npcHandler:say('Do you want to buy a Skull Staff for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crystal mace') then
	item = 2445
	price = 40000
	npcHandler:say('Do you want to buy a Crystal Mace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'silver mace') then
	item = 2424
	price = 80000
	npcHandler:say('Do you want to buy a Silver Mace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'war hammer') then
	item = 2391
	price = 5000
	npcHandler:say('Do you want to buy a War Hammer for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'hammer of wrath') then
	item = 2444
	price = 100000
	npcHandler:say('Do you want to buy a  for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'thunder hammer') then
	item = 2421
	price = 150000
	npcHandler:say('Do you want to buy a Thunder Hammer for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- MACHADOS ---------
 	if msgcontains(msg, 'axes list') then
		npcHandler:say('I sell Hand Axe, Golden Sickle, Hatchet, Hunting Spear, Orcish Axe, Battle Axe, Ripper Lance, Barbarian Axe, Knight Axe, Obsidian Lance, Double Axe, Fire Axe, Naginata, Daramanian Waraxe, Guardian Halberd, Dragon Lance, Stonecutter Axe and Great Axe.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'hand axe') then
	item = 2380
	price = 10
	npcHandler:say('Do you want to buy a Hand Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'golden sickle') then
	item = 2418
	price = 1000
	npcHandler:say('Do you want to buy a Golden Sickle for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'hatchet') then
	item = 2388
	price = 30
	npcHandler:say('Do you want to buy a Hatchet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'hunting spear') then
	item = 3965
	price = 500
	npcHandler:say('Do you want to buy a Hunting Spear for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'orcish axe') then
	item = 2428
	price = 400
	npcHandler:say('Do you want to buy a Orcish Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'battle axe') then
	item = 2378
	price = 600
	npcHandler:say('Do you want to buy a Battle Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ripper lance') then
	item = 3964
	price = 2000
	npcHandler:say('Do you want to buy a Ripper Lance for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'barbarian axe') then
	item = 2429
	price = 800
	npcHandler:say('Do you want to buy a Barbarian Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dwarven axe') then
	item = 2435
	price = 2000
	npcHandler:say('Do you want to buy a Dwarven Axe for ' ..price.. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'knight axe') then
	item = 2430
	price = 3000
	npcHandler:say('Do you want to buy a Knight Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'obsidian lance') then
	item = 2425
	price = 600
	npcHandler:say('Do you want to buy a Obsidian Lance for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'double axe') then
	item = 2387
	price = 800
	npcHandler:say('Do you want to buy a Double Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'fire axe') then
	item = 2432
	price = 12000
	npcHandler:say('Do you want to buy a Fire Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'naginata') then
	item = 2426
	price = 10000
	npcHandler:say('Do you want to buy a Naginata for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'daramanian waraxe') then
	item = 2440
	price = 10000
	npcHandler:say('Do you want to buy a Daramanian Waraxe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'guardian halberd') then
	item = 2443
	price = 15000
	npcHandler:say('Do you want to buy a Guardian Halberd for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragon lance') then
	item = 2414
	price = 20000
	npcHandler:say('Do you want to buy a Dragon Lance for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'stonecutter axe') then
	item = 2431
	price = 150000
	npcHandler:say('Do you want to buy a Stonecutter Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'great axe') then
	item = 2415
	price = 300000
	npcHandler:say('Do you want to buy a Great Axe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- WANDS---------
 	if msgcontains(msg, 'wands list') then
		npcHandler:say('I sell Wand of Vortex, Wand of Dragonbreath, Wand of Plague, Wand of Cosmic Energy and Wand of Inferno (Hell).')
 		talk_start = 1
	end

 	if msgcontains(msg, 'vortex') then
	item = 2190
	price = 500
	npcHandler:say('Do you want to buy a Wand of Vortex for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragonbreath') then
	item = 2191
	price = 1000
	npcHandler:say('Do you want to buy a Wand of Dragonbreath for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'plague') then
	item = 2188
	price = 5000
	npcHandler:say('Do you want to buy a Wand of Plague for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'cosmic energy') then
	item = 2189
	price = 10000
	npcHandler:say('Do you want to buy a Wand of Cosmic Energy for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'hell') then
	item = 2187
	price = 15000
	npcHandler:say('Do you want to buy a Wand of Inferno for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- RODS ---------
 	if msgcontains(msg, 'rods list') then
		npcHandler:say('I sell Snakebite Rod, Moonlight Rod, Volcanic Rod, Quagmire Rod and Tempest Rod.')
 		talk_start = 1
	end

 	if msgcontains(msg, 'snakebite') then
	item = 2182
	price = 500
	npcHandler:say('Do you want to buy a Snakebite Rod for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'moonlight') then
	item = 2186
	price = 1000
	npcHandler:say('Do you want to buy a Moonlight Rod for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'volcanic') then
	item = 2185
	price = 5000
	npcHandler:say('Do you want to buy a Volcanic Rod for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'quagmire') then
	item = 2181
	price = 10000
	npcHandler:say('Do you want to buy a Quagmire Rod for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'tempest') then
	item = 2183
	price = 15000
	npcHandler:say('Do you want to buy a Tempest Rod for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- ARMADURAS ---------
 	if msgcontains(msg, 'armors list') then
		npcHandler:say('I sell Simple Dress, Ball Gown, Cape, Jacket, Green Tunic, Red Robe, Doublet, Red Tunic, Leather Armor, Studded Armor, Chain Armor, Brass Armor, Scale Armor, Plate Armor, Dark Armor, Noble Armor, Knight Armor, Crown Armor, Lady Armor, Blue Robe, Golden Armor, Dragon Scale Mail, Demon Armor, Magic Plate Armor.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'simple dress') then
	item = 2657
	price = 200
	npcHandler:say('Do you want to buy a Simples Dress for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ball gown') then
	item = 2659
	price = 300
	npcHandler:say('Do you want to buy a Ball Gown for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'cape') then
	item = 2654
	price = 50
	npcHandler:say('Do you want to buy a Cape for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'jacket') then
	item = 2650
	price = 10
	npcHandler:say('Do you want to buy a Jacket for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'green tunic') then
	item = 2652
	price = 50
	npcHandler:say('Do you want to buy a Green Tunic for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'red robe') then
	item = 2655
	price = 20000
	npcHandler:say('Do you want to buy a Red Robe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'doublet') then
	item = 2485
	price = 30
	npcHandler:say('Do you want to buy a Doublet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'red tunic') then
	item = 2653
	price = 300
	npcHandler:say('Do you want to buy a Red Tunic for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'leather armor') then
	item = 2467
	price = 40
	npcHandler:say('Do you want to buy a Leather Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'studded armor') then
	item = 2484
	price = 60
	npcHandler:say('Do you want to buy a Studded Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'chain armor') then
	item = 2464
	price = 200
	npcHandler:say('Do you want to buy a Chain Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'brass armor') then
	item = 2465
	price = 400
	npcHandler:say('Do you want to buy a Brass Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'scale armor') then
	item = 2483
	price = 300
	npcHandler:say('Do you want to buy a Scale Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'plate armor') then
	item = 2463
	price = 800
	npcHandler:say('Do you want to buy a Plate Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dark armor') then
	item = 2489
	price = 1000
	npcHandler:say('Do you want to buy a Dark Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'noble armor') then
	item = 2486
	price = 2000
	npcHandler:say('Do you want to buy a Noble Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'knight armor') then
	item = 2476
	price = 5000
	npcHandler:say('Do you want to buy a Knight Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crown armor') then
	item = 2487
	price = 10000
	npcHandler:say('Do you want to buy a Crown Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'lady armor') then
	item = 2500
	price = 12000
	npcHandler:say('Do you want to buy a Lady Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'blue robe') then
	item = 2656
	price = 11000
	npcHandler:say('Do you want to buy a Blue Robe for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'golden armor') then
	item = 2466
	price = 50000
	npcHandler:say('Do you want to buy a  for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragon scale mail') then
	item = 2492
	price = 120000
	npcHandler:say('Do you want to buy a Dragon Scale Mail for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'demon armor') then
	item = 2494
	price = 300000
	npcHandler:say('Do you want to buy a Demon Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'magic plate armor') then
	item = 2472
	price = 500000
	npcHandler:say('Do you want to buy a Magic Plate Armor for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- ESCUDOS ---------
 	if msgcontains(msg, 'shields list') then
		npcHandler:say('I sell Wooden, Studded, Brass, Plate, Black, Copper, Bone, Steel, Sentinel, Ornamented, Viking, Battle, Scarab, Dark, Salamander, Dwarven, Tusk, Ancient, Rose, Castle, Beholder, Griffin, Guardian, Dragon, Tower, Crown, Amazon , Medusa, Vampire, Phoenix, Demon, Mastermind, Great, Blessed Shields also Shield of Honour.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'wooden shield') then
	item = 2512
	price = 10
	npcHandler:say('Do you want to buy a Wooden Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'studded shield') then
	item = 2526
	price = 40
	npcHandler:say('Do you want to buy a Studded Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'brass shield') then
	item = 2511
	price = 60
	npcHandler:say('Do you want to buy a Brass Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'plate shield') then
	item = 2510
	price = 100
	npcHandler:say('Do you want to buy a Plate Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'black shield') then
	item = 2529
	price = 400
	npcHandler:say('Do you want to buy a Black Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'copper shield') then
	item = 2530
	price = 250
	npcHandler:say('Do you want to buy a Copper Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'bone shield') then
	item = 2541
	price = 400
	npcHandler:say('Do you want to buy a Bone Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'steel shield') then
	item = 2509
	price = 400
	npcHandler:say('Do you want to buy a Steel Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'sentinel shield') then
	item = 3974
	price = 800
	npcHandler:say('Do you want to buy a Sentinel Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ornamented shield') then
	item = 2524
	price = 600
	npcHandler:say('Do you want to buy a Ornamented Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'viking shield') then
	item = 2531
	price = 700
	npcHandler:say('Do you want to buy a Viking Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'battle shield') then
	item = 2513
	price = 500
	npcHandler:say('Do you want to buy a Battle Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'scarab shield') then
	item = 2540
	price = 1200
	npcHandler:say('Do you want to buy a Scarab Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dark shield') then
	item = 2521
	price = 600
	npcHandler:say('Do you want to buy a Dark Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'salamander shield') then
	item = 3975
	price = 1800
	npcHandler:say('Do you want to buy a Salamander Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dwarven shield') then
	item = 2525
	price = 200
	npcHandler:say('Do you want to buy a Dwarven Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'tusk shield') then
	item = 3973
	price = 1000
	npcHandler:say('Do you want to buy a Tusk Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ancient shield') then
	item = 2532
	price = 800
	npcHandler:say('Do you want to buy a Ancient Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'rose shield') then
	item = 2527
	price = 2000
	npcHandler:say('Do you want to buy a Rose Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'castle shield') then
	item = 2535
	price = 8000
	npcHandler:say('Do you want to buy a Castle Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'beholder shield') then
	item = 2518
	price = 1500
	npcHandler:say('Do you want to buy a Beholder Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'griffin shield') then
	item = 2533
	price = 2000
	npcHandler:say('Do you want to buy a Griffin Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'guardian shield') then
	item = 2515
	price = 2500
	npcHandler:say('Do you want to buy a Guardian Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragon shield') then
	item = 2516
	price = 4000
	npcHandler:say('Do you want to buy a Dragon Shield ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'tower shield') then
	item = 2528
	price = 6000
	npcHandler:say('Do you want to buy a Tower Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crown shield') then
	item = 2519
	price = 7000
	npcHandler:say('Do you want to buy a Crown Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'amazon shield') then
	item = 2537
	price = 10000
	npcHandler:say('Do you want to buy a Amazon Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'medusa shield') then
	item = 2536
	price = 10000
	npcHandler:say('Do you want to buy a Medusa Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'shield of honour') then
	item = 2517
	price = 12000
	npcHandler:say('Do you want to buy a Shield of Honour for ' .. price .. ' Gold Coins?')
	talk_start = 1
 	end

 	if msgcontains(msg, 'vampire shield') then
	item = 2534
	price = 20000
	npcHandler:say('Do you want to buy a Vampire Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'phoenix shield') then
	item = 2539
	price = 23000
	npcHandler:say('Do you want to buy a Phoenix Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'demon shield') then
	item = 2520
	price = 40000
	npcHandler:say('Do you want to buy a Demon Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'mastermind shield') then
	item = 2514
	price = 150000
	npcHandler:say('Do you want to buy a Mastermind Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'great shield') then
	item = 2522
	price = 300000
	npcHandler:say('Do you want to buy a Great Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'blessed shield') then
	item = 2523
	price = 500000
	npcHandler:say('Do you want to buy a Blessed Shield for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- CALÇAS ---------
 	if msgcontains(msg, 'legs list') then
		npcHandler:say('I sell Bast Skirt, Leather Legs, Studded Legs, Chain Legs, Brass Legs, Plate Legs, Knight Legs, Crown Legs, Demon Legs, Dragon Scale Legs.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'bast skirt') then
	item = 3983
	price = 500
	npcHandler:say('Do you want to buy a Bast Skirt for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'leather legs') then
	item = 2649
	price = 15
	npcHandler:say('Do you want to buy a Leather Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'studded legs') then
	item = 2468
	price = 100
	npcHandler:say('Do you want to buy a Studded Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'chain legs') then
	item = 2648
	price = 80
	npcHandler:say('Do you want to buy a Chain Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'brass legs') then
	item = 2478
	price = 200
	npcHandler:say('Do you want to buy a Brass Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'plate legs') then
	item = 2647
	price = 1000
	npcHandler:say('Do you want to buy a Plate Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'knight legs') then
	item = 2477
	price = 10000
	npcHandler:say('Do you want to buy a Knight Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crown legs') then
	item = 2488
	price = 25000
	npcHandler:say('Do you want to buy a Crown Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'golden legs') then
	item = 2470
	price = 150000
	npcHandler:say('Do you want to buy a Golden Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'demon legs') then
	item = 2495
	price = 400000
	npcHandler:say('Do you want to buy a Demon Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragon scale legs') then
	item = 2469
	price = 800000
	npcHandler:say('Do you want to buy a Dragon Scale Legs for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- CAPACETES/HELMOS ---------
 	if msgcontains(msg, 'helmets list') then
		npcHandler:say('I sell Mystic Turban, Posts Officers Hat, Tribal Mask, Feather Headdress, Magician Hat, Full Helmet of the Ancients, Helmet of the Ancients also Leather, Chain, Studded, Brass, Viking, Legion, Steel, Horseman, Dark, Strange, Lady, Crown, Devil, Warrior, Crusader, Royal, Demon, Winged, Horned and Golden Helmets.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'mystic turban') then
	item = 2663
	price = 1000
	npcHandler:say('Do you want to buy a Mystic Turban for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'post officers hat') then
	item = 2665
	price = 2000
	npcHandler:say('Do you want to buy a Post Officers Hat for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'magician hat') then
	item = 2323
	price = 1000
	npcHandler:say('Do you want to buy a Magician Hat for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'leather helmet') then
	item = 2461
	price = 5
	npcHandler:say('Do you want to buy a Leather Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'tribal mask') then
	item = 3967
	price = 3000
	npcHandler:say('Do you want to buy a Tribal Mask for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'feather headdress') then
	item = 3970
	price = 3000
	npcHandler:say('Do you want to buy a Feather Headdress for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'chain helmet') then
	item = 2458
	price = 25
	npcHandler:say('Do you want to buy a Chain Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'studded helmet') then
	item = 2482
	price = 40
	npcHandler:say('Do you want to buy a Studded Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'brass helmet') then
	item = 2460
	price = 45
	npcHandler:say('Do you want to buy a Brass Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'viking helmet') then
	item = 2473
	price = 60
	npcHandler:say('Do you want to buy a Viking Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'legion helmet') then
	item = 2480
	price = 100
	npcHandler:say('Do you want to buy a Legion Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'steel helmet') then
	item = 2457
	price = 200
	npcHandler:say('Do you want to buy a Steel Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'horseman helmet') then
	item = 3969
	price = 1000
	npcHandler:say('Do you want to buy a Horseman Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dark helmet') then
	item = 2490
	price = 200
	npcHandler:say('Do you want to buy a Dark Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'strange helmet') then
	item = 2479
	price = 300
	npcHandler:say('Do you want to buy a Strange Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'lady helmet') then
	item = 2499
	price = 4000
	npcHandler:say('Do you want to buy a Lady Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crown helmet') then
	item = 2491
	price = 3000
	npcHandler:say('Do you want to buy a Crown Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'devil helmet') then
	item = 2462
	price = 2000
	npcHandler:say('Do you want to buy a Devil Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'warrior helmet') then
	item = 2475
	price = 6000
	npcHandler:say('Do you want to buy a Warrior Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crusader helmet') then
	item = 2497
	price = 10000
	npcHandler:say('Do you want to buy a Crusader Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'helmet of the ancients') then
	item = 2342
	price = 50000
	npcHandler:say('Do you want to buy a Helmet of the Ancients for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'royal helmet') then
	item = 2498
	price = 80000
	npcHandler:say('Do you want to buy a Royal Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'demon helmet') then
	item = 2493
	price = 300000
	npcHandler:say('Do you want to buy a Demon Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'winged helmet') then
	item = 2474
	price = 350000
	npcHandler:say('Do you want to buy a Winged Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'horned helmet') then
	item = 2496
	price = 450000
	npcHandler:say('Do you want to buy a Horned Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'full helmet of the ancients') then
	item = 2343
	price = 600000
	npcHandler:say('Do you want to buy a Full Helmet of the Ancients for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- BOTAS ---------
 	if msgcontains(msg, 'golden helmet') then
	item = 2471
	price = 1000000
	npcHandler:say('Do you want to buy a Golden Helmet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'boots list') then
		npcHandler:say('I sell Boots of Haste, Sandals, Leather Boots, Crocodile Boots, Steel Boots, Golden Boots.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'boots of haste') then
	item = 2195
	price = 40000
	npcHandler:say('Do you want to buy a Boots of Haste for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'sandals') then
	item = 2642
	price = 400
	npcHandler:say('Do you want to buy a Sandals for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'leather boots') then
	item = 2643
	price = 10
	npcHandler:say('Do you want to buy a Leather Boots for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crocodile boots') then
	item = 3982
	price = 2000
	npcHandler:say('Do you want to buy a Crocodile Boots for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'steel boots') then
	item = 2645
	price = 100000
	npcHandler:say('Do you want to buy a Steel Boots for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'golden boots') then
	item = 2646
	price = 2000000
	npcHandler:say('Do you want to buy a Golden Boots for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	--------- AMULETOS ---------
 	if msgcontains(msg, 'amulets list') then
		npcHandler:say('I sell Bronze Amulet, Crystal Necklace, Dragon Necklace, Elven Amulet, Garlic Necklace, Golden Amulet, Platinum Amulet, Ruby Necklace, Protection Amulet, Silver Amulet, Silver Necklace, Stone Skin Amulet, Strange Symbol, Strange Talisman, Scarab Amulet, Egipcian Amulet and Eagle Amulet.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'bronze amulet') then
	item = 2172
	price = 200
	npcHandler:say('Do you want to buy a Bronze Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crystal necklace') then
	item = 2125
	price = 300
	npcHandler:say('Do you want to buy a Crystal Necklace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dragon necklace') then
	item = 2201
	price = 500
	npcHandler:say('Do you want to buy a Dragon Necklace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'elven amulet') then
	item = 2198
	price = 1000
	npcHandler:say('Do you want to buy a Elven Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'garlic necklace') then
	item = 2199
	price = 500
	npcHandler:say('Do you want to buy a Garlic Necklace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'golden amulet') then
	item = 2130
	price = 7000
	npcHandler:say('Do you want to buy a Golden Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'platinum amulet') then
	item = 2171
	price = 5000
	npcHandler:say('Do you want to buy a Platinum Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ruby necklace') then
	item = 2133
	price = 2000
	npcHandler:say('Do you want to buy a Ruby Necklace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'protection amulet') then
	item = 2200
	price = 700
	npcHandler:say('Do you want to buy a Protection Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'silver amulet') then
	item = 2170
	price = 100
	npcHandler:say('Do you want to buy a Silver Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'silver necklace') then
	item = 2132
	price = 500
	npcHandler:say('Do you want to buy a Silver Necklace for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'stone skin amulet') then
	item = 2197
	price = 3000
	npcHandler:say('Do you want to buy a Stone Skin Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'strange symbol') then
	item = 2319
	price = 1000
	npcHandler:say('Do you want to buy a Strange Symbol for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'strange talisman') then
	item = 2161
	price = 800
	npcHandler:say('Do you want to buy a Strange Talisman for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'scarab amulet') then
	item = 2135
	price = 2000
	npcHandler:say('Do you want to buy a Scarab Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'egipcian amulet') then
	item = 2139
	price = 2000
	npcHandler:say('Do you want to buy a Egipcian Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'eagle amulet') then
	item = 2141
	price = 1000
	npcHandler:say('Do you want to buy a Eagle Amulet for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'rings list') then
		npcHandler:say('I sell Axe Ring, Club Ring, Sword Ring, Crystal Ring, Dwarven Ring, Energy Ring, Gold Ring, Life Ring, Might Ring, Power Ring, Ring of Healing, Ring of the Skies, Stealth Ring, Time Ring and Wedding Ring.')
 		talk_start = 1
 	end

 	if msgcontains(msg, 'axe ring') then
	item = 2208
	price = 200
	npcHandler:say('Do you want to buy a Axe Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'club ring') then
	item = 2209
	price = 200
	npcHandler:say('Do you want to buy a Club Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'sword ring') then
	item = 2207
	price = 200
	npcHandler:say('Do you want to buy a Sword Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'crystal ring') then
	item = 2124
	price = 1000
	npcHandler:say('Do you want to buy a Crystal Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'dwarven ring') then
	item = 2213
	price = 50
	npcHandler:say('Do you want to buy a Dwarven Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'energy ring') then
	item = 2167
	price = 800
	npcHandler:say('Do you want to buy a Energy Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'gold ring') then
	item = 2179
	price = 8000
	npcHandler:say('Do you want to buy a Gold Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'life ring') then
	item = 2205
	price = 800
	npcHandler:say('Do you want to buy a Life Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'might ring') then
	item = 2164
	price = 800
	npcHandler:say('Do you want to buy a Might Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'power ring') then
	item = 2166
	price = 100
	npcHandler:say('Do you want to buy a Power Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ring of healing') then
	item = 2214
	price = 800
	npcHandler:say('Do you want to buy a Ring of Healing for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'ring of the skies') then
	item = 2357
	price = 50000
	npcHandler:say('Do you want to buy a Ring of the Skies for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'stealth ring') then
	item = 2165
	price = 800
	npcHandler:say('Do you want to buy a Stealth Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'time ring') then
	item = 2169
	price = 2000
	npcHandler:say('Do you want to buy a Time Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'wedding ring') then
	item = 2121
	price = 1000
	npcHandler:say('Do you want to buy a Wedding Ring for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'pearls list') then
	npcHandler:say('I sell Scarab Coin, Blue Gem, Big Ruby, Big Emerald, Yellow Gem, Violet Gem, Talon, Small Amethyst, Small Emerald, Small Ruby, Small Sapphire, Small Diamond, Black Pearl and White Pearl.')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'scarab coin') then
	item = 2159
	price = 100
	npcHandler:say('Do you want to buy a Scarab Coin for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'blue gem') then
	item = 2158
	price = 500
	npcHandler:say('Do you want to buy a Blue Gem for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'big ruby') then
	item = 2156
	price = 1000
	npcHandler:say('Do you want to buy a Big Ruby for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'big emerald') then
	item = 2155
	price = 1000
	npcHandler:say('Do you want to buy a Big Emerald for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'yellow gem') then
	item = 2154
	price = 300
	npcHandler:say('Do you want to buy a Yellow Gem for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'violet gem') then
	item = 2153
	price = 300
	npcHandler:say('Do you want to buy a Violet Gem for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'talon') then
	item = 2151
	price = 200
	npcHandler:say('Do you want to buy a Talon for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'small amethyst') then
	item = 2150
	price = 50
	npcHandler:say('Do you want to buy a Small Amethyst for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'small emerald') then
	item = 2149
	price = 100
	npcHandler:say('Do you want to buy a Small Emerald for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'small ruby') then
	item = 2147
	price = 150
	npcHandler:say('Do you want to buy a Small Ruby for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'small sapphire') then
	item = 2146
	price = 100
	npcHandler:say('Do you want to buy a Small Sapphire for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'small diamond') then
	item = 2145
	price = 200
	npcHandler:say('Do you want to buy a Small Diamond for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'black pearl') then
	item = 2144
	price = 500
	npcHandler:say('Do you want to buy a Black Pearl for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

 	if msgcontains(msg, 'white pearl') then
	item = 2143
	price = 300
	npcHandler:say('Do you want to buy a White Pearl for ' .. price .. ' Gold Coins?')
 	talk_start = 1
 	end

	if msgcontains(msg, 'yes') and getPlayerMoney(cid) >= price then
	npcHandler:say('Enjoy your equipment!')
	doPlayerAddItem(cid, item, 1)
	doPlayerRemoveMoney(cid, price)
	talk_start = 0
	
	elseif msgcontains(msg, 'yes') and getPlayerMoney(cid) < price then
	npcHandler:say('You don\'t have enough money.')
	talk_start = 0
	end
	
	if msgcontains(msg, 'no') and talk_start == 1 then
	npcHandler:say('Okay. Continue buying :)')
	talk_start = 0
	end
	
 return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())