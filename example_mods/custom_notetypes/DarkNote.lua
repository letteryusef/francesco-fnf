function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'DarkNote' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'darkshitlol'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'DarkNote' then
		playSound('hit', 0.8);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'DarkNote' and difficulty == 2 then
		setProperty('health', getProperty('health')-3);
		playSound('slice', 1);
		characterPlayAnim('boyfriend', 'hurt', true);
	elseif noteType == 'DarkNote' and difficulty == 1 then
		setProperty('health', getProperty('health')-3);
		playSound('slice', 1);
		characterPlayAnim('boyfriend', 'hurt', true);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end