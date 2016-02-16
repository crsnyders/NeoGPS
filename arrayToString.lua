function arrayToString(array)
    arraySize =table.getn(array)
    arrayString= nil
    for i=1,arraySize
    do

        if arrayString ==nil then
            arrayString = string.char(array[i][1])..string.char(array[i][2])..string.char(array[i][3])
        else
            arrayString = string.char(array[i][1]),string.char(array[i][2]),string.char(array[i][3])
        end
    end

   return arrayString
end
