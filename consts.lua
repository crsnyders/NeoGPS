dofile("rainbowledArray.lua")
dofile("arrayToString.lua")
dofile("hsvTorgb.lua")
dofile("mod.lua")
--dofile("basic.lua")

numberOfLeds = 24;
degreeStep = 360/numberOfLeds;
brightness = 5
leds=nil

green = HSVtoRGB(120,100,20)--hsl(120, 100%, 70%)

--ws2812.write(4, basic(green,0,13))

function rotate(t)
  local t2 = {}
  arrSize = table.getn(t)
  for k,v in pairs(t) do
    modk =mod(k,arrSize)+1
    t2[modk] = v
  end
  return t2
end
    
rainbowarr = rainbowLEDArray(degreeStep,brightness)

ws2812.write(4, arrayToString(rainbowarr))
if not tmr.alarm(0, 2000, tmr.ALARM_AUTO,
    function()
      print("hey there")
        ws2812.write(4, arrayToString(rotate(rainbowarr)))
    end)
then
  print("whoopsie")
end
