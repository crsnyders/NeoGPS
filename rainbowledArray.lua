dofile('hsvTorgb.lua')
function rainbowLEDArray(degreeStep,brightness)
leds={}
  for i=0,360,degreeStep
  do
      led = HSVtoRGB(i,100,brightness)
      table.insert(leds,led)
  end
  return leds;
end
