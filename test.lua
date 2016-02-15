-- a simple http server
handleRquest =function(conn,payload)
  if payload ~= nil then
    jsonPayload = cjson.decode(payload);
    for k,v in pairs(jsonPayload) do print(k,v) end
   end
 end

generateString =function(ledCount,direction,distance)

end

ledCount=24;
srv=net.createServer(net.TCP)
srv:listen(80,function(conn)
    conn:on("receive",handleRquest)
end)
