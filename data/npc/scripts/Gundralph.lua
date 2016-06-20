local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end


local node1 = keywordHandler:addKeyword({'ultimate light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn ultimate light for 1600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate light',vocation = 1, price = 1600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'great light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn great light for 500 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'great light',vocation = 1, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light magic missile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light magic missile for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light magic missile',vocation = 1, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light healing for 170 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light healing',vocation = 1, price = 170, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light for free?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light',vocation = 1, price = 0, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'find person'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn find person for 80 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'find person',vocation = 1, price = 80, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'antidote'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn antidote for 150 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'antidote',vocation = 1, price = 150, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'destroy field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn destroy field for 700 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'destroy field',vocation = 1, price = 700, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'creature illusion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn creature illusion for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'creature illusion',vocation = 1, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'sudden death'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn sudden death for 3000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'sudden death',vocation = 1, price = 3000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'intense healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn intense healing for 350 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'intense healing',vocation = 1, price = 350, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'ultimate healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn ultimate healing for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate healing',vocation = 1, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'ultimate explosion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn ultimate explosion for 8000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate explosion',vocation = 1, price = 8000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'poison field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn poison field for 300 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'poison field',vocation = 1, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'fire field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn fire field for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'fire field',vocation = 1, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'heavy magic missile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn heavy magic missile for 1500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'heavy magic missile',vocation = 1, price = 1500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'create antidote'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create antidote for 600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'antidote rune',vocation = 1, price = 600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'energy field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy field for 700 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy field',vocation = 1, price = 700, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'animate dead'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn animate dead for 1200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'animate dead',vocation = 1, price = 1200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'desintegrate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn desintegrate for 900 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'desintegrate',vocation = 1, price = 900, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'create ultimate healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create ultimate healing for 1500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate healing rune',vocation = 1, price = 1500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'explosion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn explosion for 1800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'explosion',vocation = 1, price = 1800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'summon creature'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn summon creature for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'summon creature',vocation = 1, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'energy strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy strike for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy strike',vocation = 1, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'flame strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn flame strike for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'flame strike',vocation = 1, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'force strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn force strike for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'force strike',vocation = 1, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'levitate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn levitate for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'levitate',vocation = 1, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'strong haste'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn strong haste for 1300 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'strong haste',vocation = 1, price = 1300, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'haste'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn haste for 600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'haste',vocation = 1, price = 600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic wall'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic wall for 1800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic wall',vocation = 1, price = 1800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic shield for 450 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic shield',vocation = 1, price = 450, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic rope'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic rope for 200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic rope',vocation = 1, price = 200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'fire wave'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn fire wave for 850 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'fire wave',vocation = 1, price = 850, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'energy wave'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy wave for 2500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy wave',vocation = 1, price = 2500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'great energy beam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn great energy beam for 1800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'great energy beam',vocation = 1, price = 1800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'energy beam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn energy beam for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'energy beam',vocation = 1, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'invisibility'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn invisibility for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'invisibility',vocation = 1, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'enchant staff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn enchant staff for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'enchant staff',vocation = 1, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())
