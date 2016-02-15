dofile("hsvtorgb.lua")
numberOfLeds = 24;
degreeStep = 360/numberOfLeds;
leds=nil

function mod(a,b)
  a = a - math.floor(a/b)*b
return a;
end

function heading(direction,distance,degreeStep)

  directionLed = direction / degreeStep;
  maxright = directionLed + 6;
  maxLeft = mod(directionLed - 6,24);

  print(maxLeft,directionLed,maxright)
end




for i=0,360,degreeStep
do
    led = hsvToRgb(i,100,15)
    if leds == nil then
        leds = string.char(led[1])..string.char(led[2])..string.char(led[3])
    else
    leds = leds..string.char(led[1])..string.char(led[2])..string.char(led[3])
    end
end

print(leds)

ws2812.write(4, leds)
