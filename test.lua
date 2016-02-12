-- a simple http server
handleRquest =function(conn,payload)
  jsonPayload = cjson.decode(payload);
  for k,v in pairs(t) do print(k,v) end
end

connectionHandler =function(conn)
    conn:on("receive",handleRquest(conn,payload))
end

srv=net.createServer(net.TCP)
srv:listen(80,connectionHandler(conn));
