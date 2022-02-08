function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end


function start (song)
    for i = 4, 7 do
	  tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
  end
    for i = 0, 3 do 
	  tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 900,getActorAngle(i) + 360, 0.6, 'setDefault')
  end
end
function update (elapsed)
	if curStep >= 64 and curStep < 192 then
		local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
      showOnlyStrums = true
    for i=0,3 do 
		tweenFadeIn(i,0,0.6)
  end
end
else
        	for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'],i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
        	end
    	end
	if curStep >= 448 and curStep < 512 then
		local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)
		end
	else
        	for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'],i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
        	end
    	end
end