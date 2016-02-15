function rainbowLED(degreeStep,brightness)

  for i=0,360,degreeStep
  do
      led = HSVtoRGB(i,100,brightness)
      print(led[1],led[2],led[3])
      if leds == nil then
          leds = string.char(led[1])..string.char(led[2])..string.char(led[3])
      else
          leds = leds..string.char(led[1])..string.char(led[2])..string.char(led[3])
      end
  end
  return leds;
end
