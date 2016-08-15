function onStepIn(cid, item, pos)
	local phoenixegg = {x = 32477, y = 31900, z = 1, stackpos = 1}
	local gold = {x = 32478, y = 31900, z = 1, stackpos = 1}
	local talons = {x = 32479, y = 31900, z = 1, stackpos = 1}
	local wand = {x = 32480, y = 31900, z = 1, stackpos = 1}
	if item.actionid == 8011 then --Phoenix Egg
		setPlayerStorageValue(cid, 8011, 1)
		doSendMagicEffect(phoenixegg, 5)
	elseif item.actionid == 8012 then --10k
		setPlayerStorageValue(cid, 8012, 1)
		doSendMagicEffect(gold, 5)
	elseif item.actionid == 8013 then --32 Talons
		setPlayerStorageValue(cid, 8013, 1)
		doSendMagicEffect(talons, 5)
	elseif item.actionid == 8014 then --Wand Of Cosmic
		setPlayerStorageValue(cid, 8014, 1)
		doSendMagicEffect(wand, 5)
	end

	return true
end