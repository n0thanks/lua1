-- Linear Search
-- Search array for item using linear search
-- If found, return index where found, else return -1
anArray = {1,2,3,4,5,6,7,8,9,0}

function linearSearch(anArray,item)
    for i = 1,#anArray do
        if anArray[i] == item then
            return i
        end
    end
    -- Went through for loop without finding item, so:
    return -1
end
print(linearSearch(anArray,4))
print(linearSearch(anArray,0))
print(linearSearch(anArray,11))

-- Binary Search
-- Search a sorted array for an item using the binary search algorithm
-- If item found, return index where found, else return -1
anArray1 = {2,4,6,8,10,12,14,16,18,20}

function binarySearch(anArray1,item)
    LI = 1
    UI = #anArray1
    while LI <= UI do
        MI = math.floor((LI + UI) / 2)
        if anArray1[MI] == item then
            return MI
        elseif anArray1[MI] < item then
            LI = MI + 1
        else -- item > than the value at the middle index
            UI = MI - 1
        end
    end
    -- Went through loop without finding item, so:
    return -1
end
print(binarySearch(anArray1,12))
print(binarySearch(anArray1,2))
print(binarySearch(anArray1,17))
