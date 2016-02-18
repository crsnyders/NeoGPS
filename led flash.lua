lighton=1
 pin = 4
gpio.mode(pin, gpio.OUTPUT)
tmr.alarm(1,50,1,function()
if lighton==0 then 
    gpio.write(pin, gpio.HIGH)
    print("High")
    lighton=1
else 
     lighton=0
    gpio.write(pin, gpio.LOW)
    print("Low")
end 
end)
