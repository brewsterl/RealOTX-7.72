local raids =
	{
		[1] = 
			{
				name = 'Thais',
				type = 'weekly',
				days = {'monday'},
				hour = 8,
				minu = 00
			},
		[2] = 
			{
				name = 'Orcs',
				type = 'weekly',
				days = {'wednesday'},
				hour = 12,
				minu = 00
			},
		[3] = 
			{
				name = 'Demodras',
				type = 'weekly',
				days = {'sunday'},
				hour = 15,
				minu = 00
			},
		[4] = 
			{
				name = 'Elf',
				type = 'weekly',
				days = {'tuesday'},
				hour = 10,
				minu = 00
			},
		[5] = 
			{
				name = 'Horned Fox',
				type = 'weekly',
				days = {'sunday'},
				hour = 8,
				minu = 00
			},
		[6] = 
			{
				name = 'Necropharus',
				type = 'weekly',
				days = {'thursday'},
				hour = 20,
				minu = 00
			},
		[7] = 
			{
				name = 'Orshabaal',
				type = 'weekly',
				days = {'sunday'},
				hour = 18,
				minu = 00
			},
		[8] = 
			{
				name = 'Scarabs',
				type = 'weekly',
				days = {'tuesday'},
				hour = 5,
				minu = 00
			},
		[9] = 
			{
				name = 'Old Widow',
				type = 'weekly',
				days = {'wednesday'},
				hour = 19,
				minu = 00
			}	
	}
	
local last_execsutes = {}

function onThink(interval, lastExecution, thinkInterval)
	local static_time = os.time()
	for k, raid in ipairs(raids) do
		if (raid.type == 'weekly') then
			local day = os.date("%A", static_time):lower()
			if isInArray(raid.days, day) then
				local hour = tonumber(os.date("%H", static_time))
				if (raid.hour == hour) then
					local minute = tonumber(os.date("%M", static_time))
					if (raid.minu == minute) then
						local day_number = tonumber(os.date("%d", static_time))
						if (last_execsutes[k] ~= day_number) then
							last_execsutes[k] = day_number
							doExecuteRaid(raid.name)
						end
					end
				end
			end
		elseif (raid.type == 'exact') then
			local month = tonumber(os.date("%m", static_time))
			if (raid.date.month == month) then
				local day = tonumber(os.date("%d", static_time))
				if (raid.date.day == day) then
					local hour = tonumber(os.date("%H", static_time))
					if (raid.hour == hour) then
						local minute = tonumber(os.date("%M", static_time))
						if (raid.minu == minute) then
							if (last_execsutes[k] ~= day) then
								last_execsutes[k] = day
								doExecuteRaid(raid.name)
							end
						end
					end
				end
			end
		end
	end
	return true
end