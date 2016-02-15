dofile("rainbowled.lua")
dofile("mod.lua")

numberOfLeds = 24;
degreeStep = 360/numberOfLeds;
brightness = 5
leds=nil


ws2812.write(4, rainbowLED(degreeStep,brightness))