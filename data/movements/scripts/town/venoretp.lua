function onStepIn(cid, item, pos)

if getPlayerLevel(cid) < 20000 then
 pos.z = pos.z+1
 doTeleportThing(cid, pos)
 doSendMagicEffect(pos, 12)
 else
 doPlayerSendCancel(cid, "")
end
return true
end
