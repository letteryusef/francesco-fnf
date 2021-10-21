local allowCountdown = false
local endSong = false

function onStartCountdown()
	
	-- for adding cutscenes
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('testVideo');
		allowCountdown = true;
		return Function_Stop;
	end
	
	return Function_Continue;
	
end

function onEndSong()
	if not endSong and isStoryMode and seenCutscene then
		startVideo('testVideo2');
	    endSong = true;
		return Function_Stop;
	end

	return Function_Continue;
end