local allowCountdown = false
local endSong = false
local inGameOver = false

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('startScene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function opponentNoteHit()
	if curBeat > 47 then

		health = getProperty('health')

	   if getProperty('health') > 0.1 then
          setProperty('health', health- 0.01);

		  if curBeat > 367 then
		      setProperty('health', health- 0.00);
		  end
		  
		  if curBeat > 399 then
			  setProperty('health', health- 0.04);
		  end
       
		end

	end

end

function onGameOver()
	if not inGameOver then
		playSound('franciscotalk', 1, 'hablando')
	    inGameOver = true;
	end
	return Function_Continue;
end

function onGameOverConfirm()
	stopSound('hablando')
end

function onEndSong()
	if not endSong and isStoryMode then --Block the song ending
		startVideo('endingScene');
		endSong = true;
		return Function_Stop;
	end
	return Function_Continue;
end