function rainbowLED(degreeStep,brightness)

  for i=0,360,degreeStep
  do
      led = HSVtoRGB(i,100,brightness)
      if leds == nil then
          leds = string.char(led[1])..string.char(led[2])..string.char(led[3])
      else
          leds = leds..string.char(led[1])..string.char(led[2])..string.char(led[3])
      end
  end
  return leds;
end
