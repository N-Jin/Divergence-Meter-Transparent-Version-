function Initialize()
	timer = os.time()
	lastdm = SKIN:GetVariable('LastDMNumber','1')
end

function Update()
	SKIN:Bang('!SetVariable UpdateTime 25')
	timercount = os.time()
	if timercount - timer < 2 then
		SKIN:Bang('!SetVariable "DClock" "'..lastdm..'"')
	elseif timercount - timer < 4 then
		worldlinenumber = tostring(math.random(-1,9)+math.random())
		worldline2 = string.gsub(worldlinenumber, "%.", "•")
		worldline = string.sub(string.gsub(worldline2,"-0"," "),0,10)
		SKIN:Bang('!SetVariable "DClock" "'..worldline..'"')
	elseif timercount - timer < 6 then
		SKIN:Bang('!SetVariable "DClock" "'..worldline..'"')
		SKIN:Bang('!SetVariable "LastDMNumber" "'..worldline..'"')
	else
		SKIN:Bang("!SetVariable DMode 0")
	end
end