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
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'great light',vocation = 3, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light magic missile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light magic missile for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light magic missile',vocation = 3, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light healing for 170 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light healing',vocation = 3, price = 170, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light for free?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light',vocation = 3, price = 0, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'find person'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn find person for 80 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'find person',vocation = 3, price = 80, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'antidote'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn antidote for 150 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'antidote',vocation = 3, price = 150, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'create food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn create food for 300 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'food',vocation = 3, price = 300, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


local node1 = keywordHandler:addKeyword({'destroy field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn destroy field for 700 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'destroy field',vocation = 3, price = 700, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'conjure power bolt'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn conjure power bolt for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'conjure power bolt',vocation = 3, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'conjure arrow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn conjure arrow for 450 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'conjure arrow',vocation = 3, price = 450, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'conjure bolt'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn conjure bolt for 750 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'conjure bolt',vocation = 3, price = 750, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'conjure poisoned arrow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn conjure poisoned arrow for 700 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'conjure poisoned arrow',vocation = 3, price = 700, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'intense healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn intense healing for 350 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'intense healing',vocation = 3, price = 350, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'ultimate healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn ultimate healing for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'ultimate healing',vocation = 3, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'heavy magic missile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn heavy magic missile for 1500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'heavy magic missile',vocation = 3, price = 1500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'desintegrate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn desintegrate for 900 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'desintegrate',vocation = 3, price = 900, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'conjure explosive arrow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn conjure explosive arrow for 1000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'conjure explosive arrow',vocation = 3, price = 1000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic rope'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic rope for 200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic rope',vocation = 3, price = 200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic shield for 450 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic shield',vocation = 3, price = 450, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic rope for 200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic rope',vocation = 3, price = 200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'levitate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn levitate for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'levitate',vocation = 3, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'haste'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn haste for 600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'haste',vocation = 3, price = 600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'power strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn power strike for 1600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'power strike',vocation = 3, price = 1600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'arrow strike'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn arrow strike for 800 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'arrow strike',vocation = 3, price = 800, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})



-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())
