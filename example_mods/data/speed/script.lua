local allowCountdown = false
local endSong = false

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('startScene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	if not endSong and isStoryMode then --Block the song ending
		startVideo('endingScene');
		endSong = true;
		return Function_Stop;
	end
	return Function_Continue;
end