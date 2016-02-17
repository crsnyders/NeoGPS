dofile("rainbowledArray.lua")
dofile("arrayToString.lua")
dofile("hsvTorgb.lua")
dofile("mod.lua")
dofile("rotate.lua")
--dofile("basic.lua")

numberOfLeds = 24;
degreeStep = 360/numberOfLeds;
brightness = 5
leds=nil

green = HSVtoRGB(120,100,20)--hsl(120, 100%, 70%)

--ws2812.write(4, basic(green,0,13))
    
rainbowarr = rainbowLEDArray(degreeStep,brightness)
ws2812.writergb(3, string.char(0, 0, 255):rep(10))
ws2812.write(4, arrayToString(rainbowarr))
if not tmr.alarm(0, 100, tmr.ALARM_AUTO,
    function()
      --print("hey there")
      rainbowarr =rotate(rainbowarr);
        ws2812.write(4, arrayToString(rainbowarr));
    end)
then
  print("whoopsie")
end
