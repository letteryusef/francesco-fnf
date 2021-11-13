function opponentNoteHit()
	if curBeat > 159 then

		health = getProperty('health')

	   if getProperty('health') > 0.1 then
          setProperty('health', health- 0.07);
       end

	end

end