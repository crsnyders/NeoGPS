function rotate(t)
  local t2 = {}
  arrSize = table.getn(t)
  for k,v in pairs(t) do
    modk =mod(k,arrSize)+1
    t2[modk] = v
  end
  return t2
end

    