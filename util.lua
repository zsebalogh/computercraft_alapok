
local util = {}

function util.hello()
	print("Hello from util :) v0.4 - moves :)")
end

function util.select(name)
	for i=1, 16 do
		info = turtle.getItemDetail(i)
		
		if info then
			if string.find(info.name, name) then
				turtle.select(i)
				
				return true
			end
		end
	end
	
	return false
end

function util.place(name)
	if util.select(name) then
		see, info = turtle.inspect()
		
		if see then
			if turtle.dig() then
				return turtle.place()
			end
		else
			return turtle.place()
		end
	end
	
	return false
end

function util.printItems()
	for i=1, 16 do
		info = turtle.getItemDetail(i)
		
		if info then
			print(info.name)
		end
	end
end

function util.lookAround()
	local look = {}
	
	for i=1,4 do
		lookInfo(i, look, turtle.inspect())
		turtle.turnRight()
	end
	
	lookInfo("up", look, turtle.inspectUp())
	lookInfo("down", look, turtle.inspectDown())
	
	util.printTable(look)
	
	return look
end

function util.printTable(look)
	for key, value in pairs(look) do 
		print(key .. "," .. value)
	end
end

function lookInfo(tag, look, see, info)
	if see then
		print(tag .. ": " .. info.name)
		look[tag] = info.name
	end
end

function util.turn()
	turtle.turnLeft()
	turtle.turnLeft()
end

function util.dig(info)
	digInfo(info, turtle.dig())
end
function util.digUp(info)
	digInfo(info, turtle.digUp())
end
function util.digDown(info)
	digInfo(info, turtle.digDown())
end

function digInfo(info, ok, msg)
	if not info then
		info = ""
	end
	if not ok then
		print("Nem sikerült ásni " .. msg .. " / " .. info)
	end
end

function util.moveForward()
	return util.safeForward()
end

function util.moveLeft()
	turtle.turnLeft()
	
	local success = util.safeForward()
	
	turtle.turnRight()
	
	return success
end

function util.moveRight()
	turtle.turnRight()
	
	local success = util.safeForward()
	
	turtle.turnLeft()
	
	return success
end

function util.moveBack()
	util.turn()
	
	local success = util.safeForward()
	
	util.turn()
	
	return success
end

function util.safeForward()
	see, info = turtle.inspect()
	
	if see then
		if turtle.dig() then
			return turtle.forward()
		end
	else
		return turtle.forward()
	end
	
	return false
end

function util.moveUp()
	see, info = turtle.inspectUp()
	
	if see then
		if turtle.digUp() then
			return turtle.up()
		end
	else
		return turtle.up()
	end
	
	return false
end

function util.wall(height, length, block)
	for i=1, height do
		for j=1, length do
			if i % 2 == 0 then
				util.place(block)
				
				if j < length then
					util.moveLeft()
				end
			else 
				util.place(block)
				
				if j < length then
					util.moveRight()
				end
			end
		end
		
		if i < height then
			util.moveUp()
		end
	end
	
	util.wallBack(height, length)
end

function util.wallBack(height, length)
	for i=1, height do
		if i < height then
			turtle.down()
		end
	end
	
	for i=1, length do
		if length % 2 == 0 then
			if i < length then
				util.moveRight()
			end
		else 
			if i < length then
				util.moveLeft()
			end
		end
	end
end

function util.turnRightCorner()
	util.moveRight()
	util.moveForward()
	turtle.turnLeft()
end

function util.turnLeftCorner()
	util.moveLeft()
	util.moveForward()
	turtle.turnRight()
end

return util
