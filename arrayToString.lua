function arrayToString(array,offset)
    r = 1
    g = 2
    b = 3
    arraySize =table.getn(array)
    arrayString= nil
    for i=1,arraySize
    do
        p = mod(i+offset,arraySize)+1;
        if arrayString ==nil then
            arrayString = string.char(array[p][r])..string.char(array[p][g])..string.char(array[p][b])
        else
            arrayString =arrayString..string.char(array[p][r])..string.char(array[p][g])..string.char(array[p][b])
        end
    end

   return arrayString
end
