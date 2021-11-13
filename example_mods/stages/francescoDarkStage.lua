---@diagnostic disable: undefined-global
function onCreate()

	-- shitty stage bgs and ground lol
	makeLuaSprite('dark', 'francescodark', -600, -300)
	addLuaSprite('dark', false)
	setLuaSpriteScrollFactor('dark', 0.9, 0.9)

	makeLuaSprite('ground', 'francescogrounddark', -600, -300)
	addLuaSprite('ground', false)
	setLuaSpriteScrollFactor('ground', 0.9, 0.9)

	close(true);

end