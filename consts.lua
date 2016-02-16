dofile("rainbowledArray.lua")
dofile("arrayToString.lua")
dofile("hsvTorgb.lua")
dofile("mod.lua")
dofile("basic.lua")

numberOfLeds = 24;
degreeStep = 360/numberOfLeds;
brightness = 5
leds=nil

green = HSVtoRGB(120,100,20)--hsl(120, 100%, 70%)

ws2812.write(4, basic(green,0,13))

function rotate(t)
  local t2 = {}
  arrSize = table.getn(t)
  for k,v in pairs(t) do
    modk =mod(k+1,arrSize)
    t2[modk+1] = v
  end
  return t2
end
    
rainbowarr = rainbowLEDArray(degreeStep,brightness)
rainbowStr = arrayToString(rainbowarr)

ws2812.write(4, rainbowStr)
if not tmr.alarm(0, 2000, tmr.ALARM_AUTO,
    function()
      print("hey there")
      rainbowarr = rotate(rainbowarr)
        rainbowStr = arrayToString(rainbowarr)
        ws2812.write(4, rainbowStr)      
    end)
then
  print("whoopsie")
end
