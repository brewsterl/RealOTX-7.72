local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

local node1 = keywordHandler:addKeyword({'great light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn great light for 500 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'great light',vocation = 2, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light magic missile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light magic missile for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light magic missile',vocation = 2, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light healing for 170 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light healing',vocation = 2, price = 170, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light for free?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light',vocation = 2, price = 0, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'find person'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn find person for 80 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'find person',vocation = 2, price = 80, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'antidote'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn antidote for 150 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'antidote',vocation = 2, price = 150, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'create food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create food for 300 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'food',vocation = 2, price = 300, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'destroy field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn destroy field for 700 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'destroy field',vocation = 2, price = 700, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'creature illusion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn creature illusion for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'creature illusion',vocation = 2, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'create ultimate healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create ultimate healing for 1500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate healing rune',vocation = 2, price = 1500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'create intense healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create intense healing for 600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'intense healing rune',vocation = 2, price = 600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'intense healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn intense healing for 350 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'intense healing',vocation = 2, price = 350, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'ultimate healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn ultimate healing for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate healing',vocation = 2, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'poison field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn poison field for 300 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'poison field',vocation = 2, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'fire field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn fire field for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'fire field',vocation = 2, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'heavy magic missile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn heavy magic missile for 1500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'heavy magic missile',vocation = 2, price = 1500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'create antidote'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create antidote for 600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'antidote rune',vocation = 2, price = 600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'energy field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy field for 700 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy field',vocation = 2, price = 700, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'animate dead'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn animate dead for 1200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'animate dead',vocation = 2, price = 1200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'desintegrate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn desintegrate for 900 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'desintegrate',vocation = 2, price = 900, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'create ultimate healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create ultimate healing for 1500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate healing rune',vocation = 2, price = 1500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'energy explosion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy explosion for 8000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy explosion',vocation = 2, price = 8000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'explosion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn explosion for 1800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'explosion',vocation = 2, price = 1800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'summon creature'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn summon creature for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'summon creature',vocation = 2, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'great fireball'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn greate fireball for 1600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'great fireball',vocation = 2, price = 1600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'fireball'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn fireball for 1200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'fireball',vocation = 2, price = 1200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'convince creature'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn convince creature for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'convince creature',vocation = 2, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'fire wall'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn fire wall for 2500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'fire wall',vocation = 2, price = 2500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'energy strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy strike for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy strike',vocation = 2, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'flame strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn flame strike for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'flame strike',vocation = 2, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'poison storm'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn poison storm for 8000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'poison storm',vocation = 2, price = 8000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'paralyze'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn paralyze for 1900 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'paralyze',vocation = 2, price = 1900, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'mass healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn mass healing for 2200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'mass healing',vocation = 2, price = 2200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'heal friend'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn heal friend for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'heal friend',vocation = 2, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'wild growth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn wild growth for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'wild growth',vocation = 2, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'undead legion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn undead legion for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'undead legion',vocation = 2, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'chameleon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn chameleon for 1300 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'chameleon',vocation = 2, price = 1300, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'soulfire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn soul fire for 1800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'soul fire',vocation = 2, price = 1800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())


