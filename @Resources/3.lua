function Initialize()
	timer = os.time()
end

function Update()
	timercount = os.time()
	if timercount - timer < 2 then
		datetime = tostring(os.date("%d").."•"..os.date("%m").."•"..os.date("%y"))
		date = string.gsub(datetime,"/","•")
		SKIN:Bang('!SetVariable "DClock" "'..date..'"')
	else
		SKIN:Bang('!SetVariable DMode 0')
	end
end