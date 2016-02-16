function arrayToString(array)
    arraySize =table.getn(array)
    arrayString= nil
    for i=1,arraySize
    do

        if arrayString ==nil then
            arrayString = string.char(array[i])
        else
            arrayString = arrayString..string.char(array[i])
        end
    end

   return arrayString
end