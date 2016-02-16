function basic(colour, start,endIndex)
  leds =nil
  for i=0,numberOfLeds do
    if (i>=start and i<endIndex) then
      led = colour;
    else
      led ={0,0,0}
    end
    if leds == nil then
      leds = string.char(led[3])..string.char(led[2])..string.char(led[1])
    else
      leds = leds..string.char(led[3])..string.char(led[2])..string.char(led[1])
    end
  end
  return leds
end
