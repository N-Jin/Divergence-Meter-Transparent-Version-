function Initialize()
	lastdm = SKIN:GetVariable('LastDMNumber','1')
end

function Update()
	h=os.date('%H')
	m=os.date('%M')
	s=os.date('%S')
	if s % 2 == 0 then
	SKIN:Bang('!SetVariable "DClock" "'..h..' '..m..'•'..s..'"')
	else
	SKIN:Bang('!SetVariable "DClock" "'..h..'•'..m..' '..s..'"')
	end
	if tonumber(m) % 5 == 0 and (tonumber(s) < 2) then
		SKIN:Bang('!SetVariable DClock "'..lastdm..'"')
	end
	if tonumber(m) % 15 == 0 and s == "00" then
		SKIN:Bang('!SetVariable "DMode" "1"')
	end
end