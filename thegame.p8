pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
state = 1 
--0 is menu, 1 is game



player = {sp=1,x=64,y=64,mode=0}
--mode 0 is ship, mode 1 is walk

entities = {player}

function _init()
	

end


function _update()
	if(state==0)menuupdate()
	if(state==1)gameupdate()
end


function _draw()
	if(state==0)menudraw()
	if(state==1)gamedraw()
end

function menuupdate()
end

function menudraw()
end

function gameupdate()
	playerinput()
end



function gamedraw()
	cls(1)
	foreach(entities,edraw)
end

function edraw(o)
	spr(o.sp,o.x,o.y)
end
-->8
--player stuff--

function playerinput()
	if(player.mode==0)shippinput()
	if(player.mode==1)walkpinput()
end

function shippinput()
	if btn(⬆️) then
		player.y -= 1
	end
	if btn(⬇️) then
		player.y += 1
	end
	if btn(⬅️) then
		player.x -= 1
	end
	if btn(➡️) then
		player.x += 1
	end
	if btnp(❎) then
		--todo--
	end
	if btnp(🅾️) then
		--todo
	end
end

function walkpinput()
	if btn(⬆️) then
		player.y -= 1
	end
	if btn(⬇️) then
		player.y += 1
	end
	if btn(⬅️) then
		player.x -= 1
	end
	if btn(➡️) then
		player.x += 1
	end
	if btnp(❎) then
		--todo--
	end
	if btnp(🅾️) then
		--todo--
	end
end

-- transform into walker --
function twalker()
	player.mode = 1
end

function tship()
	player.mode = 0
end
__gfx__
0000000000000000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000000000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000dcc0000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700066666660cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000ddd0000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000cccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
