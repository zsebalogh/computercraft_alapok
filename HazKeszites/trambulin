function trambulin(hosz, szel)
	util.select("wood_planks")
	turtle.up()
	for i=1, 2 do
		for g=1, hosz do
			turtle.forward()
		end
		
		turtle.turnRight()
		turtle.placeDown()
		
		for d=1, szel do
			turtle.forward()
		end
		
		turtle.turnRight()
		turtle.placeDown()
		
	end
	turtle.up()
	for i=1, 2 do
		for o=1, hosz do
			turtle.placeDown()
			turtle.forward()
		end
		turtle.turnRight()
		for u=1, szel do
			turtle.placeDown()
			turtle.forward()
		end
		turtle.turnRight()
	end
	
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	
	util.select("slime")
	for i=1, szel do
		for o=1, hosz do
			turtle.placeDown()
			turtle.forward()
		end

		turtle.turnLeft()
		turtle.forward()
		turtle.turnRight()
		
		for u=1, hosz do
			turtle.back()
		end
  end

  turtle.turnRight()
  turtle.forward()
  turtle.turnLeft()

end

trambulin(5, 5)
