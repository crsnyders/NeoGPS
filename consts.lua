dofile("rainbowledArray.lua")
dofile("arrayToString.lua")
dofile("hsvTorgb.lua")
dofile("mod.lua")
dofile("rotate.lua")
--dofile("basic.lua")

numberOfLeds = 24;
degreeStep = 360/(numberOfLeds+1);
brightness = 5
leds=nil
ledPin = 5

green = HSVtoRGB(120,100,20)--hsl(120, 100%, 70%)

--ws2812.write(4, basic(green,0,13))
counter = 0    
rainbowarr = rainbowLEDArray(degreeStep,brightness)
ws2812.write(ledPin, arrayToString(rainbowarr,counter))

if not tmr.alarm(0, 100, tmr.ALARM_AUTO,
    function()
        counter = mod(counter+1,numberOfLeds+1)
        ws2812.write(ledPin, arrayToString(rainbowarr,counter));
    end)
then
  print("whoopsie")
end
