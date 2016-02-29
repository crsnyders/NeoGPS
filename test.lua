-- a simple http server
handleRquest =function(conn,payload)
  if payload ~= nil then
    jsonPayload = cjson.decode(payload);
    --for k,v in pairs(jsonPayload) do print(k,v) end
    if jsonPayload["start"] ==true then
    tmr.start(0)
    elseif jsonPayload["stop"] ==true then
    tmr.stop(0)
    elseif jsonPayload["leds"] ~=nil then
    ws2812.write(5, jsonPayload["leds"]);
    end
   end
 end

generateString =function(ledCount,direction,distance)

end

ledCount=24;
srv=net.createServer(net.TCP)
srv:listen(80,function(conn)
    conn:on("receive",handleRquest)
end)
