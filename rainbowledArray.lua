dofile('hslTorgb.lua')
function rainbowLEDArray(degreeStep,brightness)
leds={}
  for i=0,360,degreeStep
  do
      led = hslToRgb(i/360,1,brightness/100)
      table.insert(leds,led)
  end
  return leds;
end
