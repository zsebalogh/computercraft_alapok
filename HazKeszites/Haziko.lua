function HatizsakKiValaszt(targy)
    for i=1, 16 do
        info = turtle.getItemDetail(i)
        
        if info then
            if info.name == targy then
                turtle.select(i)
            print("megvan amit kerestel")
            else
                print(i .. " mas van benne " .. info.name)
            end
        else
            print(i .. " ures zseb")
        end
    end
end
function fal(magas, szeles)
  for u=1, szeles do
    for o=1, magas do
      turtle.place()
      turtle.up()
    end
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
    for g=1, magas do
      turtle.down()
    end
  end
end

function ajto()
  turtle.turnLeft()
  turtle.dig()
  turtle.up()
  turtle.dig()
  turtle.down()
  HatizsakKiValaszt("minecraft:wooden_door")
  turtle.place()
  turtle.turnRight()
end

function ablak()
  turtle.turnLeft()
  turtle.up()
  turtle.dig()
  HatizsakKiValaszt("minecraft:glass")
  turtle. place()
  turtle.turnRight()
  turtle.down()
end

function teto(hosszu, szeles)
  turtle.select(4)
  turtle.up()
  for i=1, 2 do
    for w=1, hosszu do
      turtle.placeDown()
      turtle.forward()
    end

    turtle.turnLeft()

    for o=1, szeles do
      turtle.placeDown()
      turtle.forward()
    end

    turtle.turnLeft()

  end   
  
  turtle.forward()
  turtle.turnLeft()
  turtle.forward()
  turtle.turnRight()

  turtle.up()

  for i=1, 2 do
    for w=1, hosszu - 2 do
      turtle.placeDown()
      turtle.forward()
    end
  
    turtle.turnLeft()

    for o=1, szeles - 2 do
      turtle.placeDown()
      turtle.forward()
    end
    
    turtle.turnLeft()

  end
end

function haz(h, sz, m)
    for i=1, 2 do
      HatizsakKiValaszt("minecraft:blocks")
      fal(m, h)
      turtle.forward()
      turtle.turnLeft()
      turtle.back()
      fal(m, sz)
      turtle.forward()
      turtle.turnLeft()
      turtle.back()
  end

  turtle.turnRight()
  turtle.forward()
  turtle.forward()
  turtle.turnLeft()
  turtle.dig()
  turtle.up()
  turtle.dig()
  turtle.down()
  HatizsakKiValaszt("minecraft:wooden_door")
  turtle.place()

  turtle.turnRight()
  turtle.forward()
  turtle.forward()
  turtle.turnLeft()
  turtle.up()
  turtle.dig()
  HatizsakKiValaszt("minecraft:glass")
  turtle.place()
  turtle.turnRight()
  turtle.down()
  turtle.forward()

  lepesek = h - 3
  
  for i=1, lepesek do
    turtle. forward()
  end
  
  turtle.turnLeft()
  turtle.forward()

  lepesek = sz
  
  for i=1, lepesek do
    turtle.forward()
  end

  turtle.forward()
 
  turtle.turnLeft()


  for i=1, m do
    turtle.up()
  end
  
  hosszu = h + 2

  szel = sz + 2

  teto(hosszu, szel)

end

haz(5, 6, 4)
