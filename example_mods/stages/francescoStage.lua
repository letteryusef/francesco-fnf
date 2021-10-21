---@diagnostic disable: undefined-global
function onCreate()

	-- shitty stage bgs and ground lol
	makeLuaSprite('yellow', 'francescoyellow', -600, -300)
	addLuaSprite('yellow', false)
	setLuaSpriteScrollFactor('yellow', 0.9, 0.9)

	makeLuaSprite('purple', 'francescopurple', -600, -300)
	addLuaSprite('purple', false)
	setLuaSpriteScrollFactor('purple', 0.9, 0.9)

	makeLuaSprite('ground', 'francescoground', -600, -300)
	addLuaSprite('ground', false)
	setLuaSpriteScrollFactor('ground', 0.9, 0.9)

	close(true);

end

function onStepHit()
	if curBeat < 52 then
		if curStep == 207 then
			removeLuaSprite('purple', false)
		end

	end

end