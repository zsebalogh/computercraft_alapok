function bastya(magas, szeles)
	util.select("block")
	for t=1, magas do
		turtle.up()
		for i=1, 2 do
			for o=1, szeles do
				turtle.placeDown()
				turtle.forward()
			end
			turtle.turnRight()
			util.select("block")
			for u=1, szeles do
				turtle.placeDown()
				turtle.forward()
			end
			turtle.turnRight()
			util.select("block")
		end
	end
	
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	
	for i=1, szeles - 1 do
		for o=1, szeles do
			turtle.placeDown()
			turtle.forward()
		end

		turtle.turnLeft()
		turtle.forward()
		turtle.turnRight()
		util.select("block")
		
		for u=1, szeles do
			turtle.back()
		end
	
	end
	
	turtle.back()
	turtle.up()
	util.select("block")
	
	for i=1, 4 do
		for o=1, szeles / 2 do
			turtle.forward()
			turtle.placeDown()
			turtle.forward()
		end
		turtle.turnRight()
		util.select("block")
	end
	
	turtle.back()
	turtle.back()
	
	for i=1, magas + 1 do
		turtle.down()
		util.select("ladder")
		turtle.place()
	end
	
	turtle.turnRight()
	turtle.forward()
	
	turtle.turnLeft()
	turtle.dig()
	turtle.up()
	turtle.dig()
	turtle.down()
	HatizsakKiValaszt("door")
	turtle.place()
	turtle.turnRight()
end
                               

bastya(4, 4)
