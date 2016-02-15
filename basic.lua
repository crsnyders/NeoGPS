dofile("hsvTorgb.lua")
green = HSVtoRGB(120,100,15)--hsl(120, 100%, 70%)
function basic()
  for i=0,numberOfLeds do
    if (i>=0 and i<13) then
      led = green;
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
