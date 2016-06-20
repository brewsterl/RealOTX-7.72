local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local choose = {}
local cancel = {}
local available = {}
function creatureSayCallback(cid, type, msg)

if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_PRIVATE and 0 or cid

if isInArray({"tasks", "task", "mission"}, msg:lower()) then
local can = getTasksByPlayer(cid)
if #can > 0 then
local text = ""
local sep = ", "
table.sort(can, (function(a, b) return (a < b) end))
local t = 0
for _, id in ipairs(can) do
t = t + 1
if t == #can - 1 then
sep = " and "
elseif t == #can then
sep = "."
end
text = text .. "{" .. (tasks[id].name or tasks[id].raceName) .. "}" .. sep
end
selfSay("The current task" .. (#can > 1 and "s" or "") .. " that you can choose " .. (#can > 1 and "are" or "is") .. " " .. text, cid)
talkState[talkUser] = 0
else
selfSay("I don't have any task for you right now.", cid)
end
elseif msg ~= "" and canStartTask(cid, msg) then
if #getPlayerStartedTasks(cid) >= tasksByPlayer then
selfSay("Sorry, but you already started " .. tasksByPlayer .. " tasks.", cid)
return true
end
local task = getTaskByName(msg)
if task and getCreatureStorage(cid, QUESTSTORAGE_BASE + task) > 0 then
return false
end
selfSay("In this task you must defeat " .. tasks[task].killsRequired .. " " .. tasks[task].raceName .. ". Are you sure that you want to start this task?", cid)
choose[cid] = task
talkState[talkUser] = 1
elseif msg:lower() == "yes" and talkState[talkUser] == 1 then
doCreatureSetStorage(cid, QUESTSTORAGE_BASE + choose[cid], 1)
selfSay("Excellent! You can check the status of your task saying report to me.", cid)
choose[cid] = nil
talkState[talkUser] = 0
elseif msg:lower() == "report" then
local started = getPlayerStartedTasks(cid)
local finishedAtLeastOne = false
local finished = 0
if started and #started > 0 then
for _, id in ipairs(started) do
if getCreatureStorage(cid, KILLSSTORAGE_BASE + id) >= tasks[id].killsRequired then
for _, reward in ipairs(tasks[id].rewards) do
print("Rewards loaded")
local deny = false
if reward.storage then
if getCreatureStorage(cid, reward.storage[1]) >= reward.storage[2] then
deny = true
end
end
if isInArray({REWARD_MONEY, "money"}, reward.type:lower()) and not deny then
doPlayerAddMoney(cid, reward.value[1])
elseif isInArray({REWARD_EXP, "exp", "experience"}, reward.type:lower()) and not deny then
doPlayerAddExperience(cid, reward.value[1])
doPlayerSendDefaultCancel(cid, "You gained " .. reward.value[1] .. " experience points.")
elseif isInArray({REWARD_ACHIEVEMENT, "achievement", "ach"}, reward.type:lower()) and not deny then
if doPlayerAddAchievement then
doPlayerAddAchievement(cid, reward.value[1], true)
end
elseif isInArray({REWARD_STORAGE, "storage", "stor"}, reward.type:lower()) and not deny then
doCreatureSetStorage(cid, reward.value[1], reward.value[2])
elseif isInArray({REWARD_POINT, "points", "point"}, reward.type:lower()) and not deny then
doCreatureSetStorage(cid, POINTSSTORAGE, getCreatureStorage(cid, POINTSSTORAGE) + reward.value[1])
elseif isInArray({REWARD_ITEM, "item", "items", "object"}, reward.type:lower()) and not deny then
doPlayerAddItem(cid, reward.value[1], reward.value[2])
end

if reward.storage then
doCreatureSetStorage(cid, reward.storage[1], reward.storage[2])
end
end

if tasks[id].norepeatable then
doCreatureSetStorage(cid, QUESTSTORAGE_BASE + id, 2)
else
doCreatureSetStorage(cid, QUESTSTORAGE_BASE + id, 0)
end
doCreatureSetStorage(cid, KILLSSTORAGE_BASE + id, 0)
if getCreatureStorage(cid, REPEATSTORAGE_BASE + id) < 1 then
doCreatureSetStorage(cid, REPEATSTORAGE_BASE + id, 0)
end
doCreatureSetStorage(cid, REPEATSTORAGE_BASE + id, getCreatureStorage(cid, REPEATSTORAGE_BASE + id) + 1)
finishedAtLeastOne = true
finished = finished + 1
end
end

if not finishedAtLeastOne then
selfSay("You haven't finished any task yet.", cid)
else
selfSay("Awesome! you finished " .. (finished > 1 and "various" or "a") .. " task" .. (finished > 1 and "s" or "") .. ". Talk to me again if you want to start a task.", cid)
end
else
selfSay("You haven't started any task yet.", cid)
end 
elseif msg:lower() == "started" then
local started = getPlayerStartedTasks(cid)
if started and #started > 0 then
local text = ""
local sep = ", "
table.sort(started, (function(a, b) return (a < b) end))
local t = 0
for _, id in ipairs(started) do
t = t + 1
if t == #started - 1 then
sep = " and "
elseif t == #started then
sep = "."
end
text = text .. "{" .. (tasks[id].name or tasks[id].raceName) .. "}" .. sep
end

selfSay("The current task" .. (#started > 1 and "s" or "") .. " that you started " .. (#started > 1 and "are" or "is") .. " " .. text, cid)
else
selfSay("You haven't started any task yet.", cid)
end
elseif msg:lower() == "cancel" then
local started = getPlayerStartedTasks(cid)
if started and #started > 0 then
selfSay("Cancelling a task will make the count restart. Wich task you want to cancel?", cid)
talkState[talkUser] = 2
else
selfSay("You haven't started any task yet.", cid)
end
elseif getTaskByName(msg) and talkState[talkUser] == 2 and isInArray(getPlayerStartedTasks(cid), getTaskByName(msg)) then
local task = getTaskByName(msg)
if getCreatureStorage(cid, KILLSSTORAGE_BASE + task) > 0 then
selfSay("You currently killed " .. getCreatureStorage(cid, KILLSSTORAGE_BASE + task) .. "/" .. tasks[task].killsRequired .. " " .. tasks[task].raceName .. ". Cancelling this task will restart the count. Are you sure you want to cancel this task?", cid)
else
selfSay("Are you sure you want to cancel this task?", cid)
end
talkState[talkUser] = 3
cancel[cid] = task
elseif msg:lower() == "yes" and talkState[talkUser] == 3 then
doCreatureSetStorage(cid, QUESTSTORAGE_BASE + cancel[cid], -1)
doCreatureSetStorage(cid, KILLSSTORAGE_BASE + cancel[cid], -1)
selfSay("You have cancelled the task " .. (tasks[cancel[cid]].name or tasks[cancel[cid]].raceName) .. ".", cid)
talkState[talkUser] = 0
elseif isInArray({"points", "rank"}, msg:lower()) then
selfSay("At this time, you have " .. getCreatureStorage(cid, POINTSSTORAGE) .. " Paw & Fur points. You " .. (getPlayerRank(cid) == 5 and "are an Elite Hunter" or getPlayerRank(cid) == 4 and "are a Trophy Hunter" or getPlayerRank(cid) == 3 and "are a Big Game Hunter" or getPlayerRank(cid) == 2 and "are a Ranger" or getPlayerRank(cid) == 1 and "are a Huntsman" or "haven't been ranked yet") .. ".", cid)
talkState[talkUser] = 0
end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())