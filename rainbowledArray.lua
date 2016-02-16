dofile('hsvTorgb.lua')
function rainbowLEDArray(degreeStep,brightness)
leds={}
  for i=0,360,degreeStep
  do
      led = HSVtoRGB(i,100,brightness)
      table.insert(leds,led[1])
      table.insert(leds,led[2])
      table.insert(leds,led[3])
  end
  return leds;
end