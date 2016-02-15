dofile("hsvtorgb.lua")
leds=nil
for i=0,360,15
do
    led = hsvToRgb(i,100,15)
    if leds == nil then
        leds = string.char(led[1])..string.char(led[2])..string.char(led[3])
    else
    leds = leds..string.char(led[1])..string.char(led[2])..string.char(led[3])
    end
end

print(leds)

ws2812.write(4, leds)