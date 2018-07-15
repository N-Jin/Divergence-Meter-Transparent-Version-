function Initialize()
	timer = os.time()
	lastdm = SKIN:GetVariable('LastDMNumber','1')
	WLNumbers = {"0•571082","0•571046","0•571024","0•571015","0•523307","0•523299","0•456923","0•456914","0•456903","0•409431","0•409420","0•337187","0•334581","0•337337","0•337199","0•328403","0•000000","1•143688","1•130426","1•130238","1•130205","1•382733","1•129954","1•129848","1•097302","1•??????","1•064750","1•053649","1•055821","1•048728","1•048596","1•048599","1•049326","2•615074","3•019430","3•030493","3•182879","3•130238","3•372329","3•386019","3•406288","3•600104","3•667293","4•530806","4•530805","4•493624","4•493623","4•456442","4•456441"," •275349"," •195284"}
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
        worldline = WLNumbers[math.random(1,51)]
    elseif timercount - timer < 6 then
		SKIN:Bang('!SetVariable "DClock" "'..worldline..'"')
		SKIN:Bang('!SetVariable "LastDMNumber" "'..worldline..'"')
	else
		SKIN:Bang("!SetVariable DMode 0")
	end
end