focus = 0
 talk_start = 0
 target = 0
 following = false
 attacking = false
 
 function onThingMove(creature, thing, oldpos, oldstackpos)
 
 end
 
 
 function onCreatureAppear(creature)
 
 end
 
 
 function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
 end
 
 
 function onCreatureTurn(creature)
 
 end
 
 function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
 end
 
 
 function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)
 
  	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I can take you to the iceland (50gps) or desert (100gps) Where do you want to go?')
  		focus = cid
  		talk_start = os.clock()
  	end
 
 	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')
  	end
 
 	if msgcontains(msg, 'iceland') and focus == cid then
 		if pay(cid,50) then
			selfSay('Let\'s go!')
			selfSay('/send ' .. creatureGetName(cid) .. ', 254 25 6')
			focus = 0
			talk_start = 0
		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
  
 
 
  	if msgcontains(msg, 'desert') and focus == cid then
  		if pay(cid,30) then
 			selfSay('Let\'s go!')
 			selfSay('/send ' .. creatureGetName(cid) .. ', 100 577 7')
 			focus = 0
 			talk_start = 0
 		else
 			selfSay('Sorry, you don\'t have enough money.')
 			talk_start = os.clock()
 		end
  	end
 
 

 
  	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
  		selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
  		focus = 0
  		talk_start = 0
  	end
 end
 function onCreatureChangeOutfit(creature)
 
 end
 
  function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
 		focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
  end
