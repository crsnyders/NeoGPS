dofile("consts.lua")
dofile("hsvTorgb.lua")
dofile("mod.lua")


function heading(direction,distance,degreeStep,numberOfLeds)

  directionLed = direction / degreeStep;
  maxright = directionLed + 6;
  maxLeft = mod(directionLed - 6,numberOfLeds);

  if(maxLeft < maxright) then
    startIndex = maxLeft;
    endIndex = maxright;
  else
    startIndex = maxLeft;
    endIndex = maxLeft;
  end

  for i=0,numberOfLeds do
    if(i > endIndex or i< startIndex) then
      print(i)
    end
  end
end


ws2812.write(4, basic())
