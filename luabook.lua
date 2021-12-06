-- New lua stuff (Book)
local str = "Hello\nWorld"
print(str)
print(os.date())
print("\n")

N = 8 -- Size of board
-- Check whether position (n,c) is free from attacks
function isplaceok (a,n,c)
    isplaceok_count = isplaceok_count + 1
    for i = 1,n - 1 do --for each queen already placed
        if (a[i] == c) or --same column?
            (a[i] - i == c - n) or --same diagonal?
            (a[i] + i == c + n) then --same diagonal?
            return false --place can be attacked
        end
    end
    return true --no attacks; place is ok
end

-- Print a board
function printsolution (a)
    for i = 1,N do --for each row
        for j = 1,N do --and each column
            --write "X" or "-" plus a space
            io.write(a[i] == j and "X" or "-"," ")
        end
        io.write("\n")
    end
    io.write("\n")
end

-- Add to board 'a' all queens from 'n' to 'N'
function addqueen (a,n)
    if n > N then --all queens have been placed?
        printsolution(a)
        return true
    else --try to place n-th queen
        for c = 1, N do
            if isplaceok(a,n,c) then
                a[n] = c --place n-th queen at column 'c'
                if addqueen(a,n + 1) then
                    return true
                end
            end
        end
    end
end

isplaceok_count = 0

-- Run the program
addqueen({},1)
print(isplaceok_count)

--[=[page = [[
    <html>
    <head>
        <title>An HTML Page</title>
    </head>
    <body>
        <a href="http://www.lua.org">Lua</a>
    </body>
    </html>
]]
write(page)--]=]

print("10" + 1)
print(tostring(42 + 23) == "65")

if (420 == .42e3) then
    print("True\n") 
else
    print("False\n")
end

aMultiTable = {}
for i = 0,9 do
    aMultiTable[i] = {}
    for j = 0,9 do
        aMultiTable[i][j] = tostring(i)..tostring(j)
    end
end
io.write("Table[0][0]: ",aMultiTable[1][2],"\n")
for i = 0,9 do
    for j = 0,9 do
        io.write(aMultiTable[i][j],": ","\n")
    end
    print()
end

function fahrToCelsius(fahrTemp)
    celsTemp = (fahrTemp - 32) / 1.8
    return celsTemp
end
print(fahrToCelsius(32))
print(fahrToCelsius(68))
print(fahrToCelsius(5))

function analyzeNumber (aNumber)
    if aNumber == 0 then
        return "zero" 
    elseif aNumber >= 0 then
        return "positive"
    else return "negative"       
    end
end
print(analyzeNumber(23))
print(analyzeNumber(-300))
print(analyzeNumber(0))

function analyzeList (aList)
    io.write(#aList,"\n")
    print(table.concat(aList,", "))
end
print(analyzeList({"a","b","c","d"}))

function countItems (anItem,aList)

end
print(countItems("a",{"b","a","a","c","a"}))
print(countItems(7,{1,3,7,7,5,7,7}))

function replaceAll (oldVal,newVal,aList)

end
myList = {1,2,3,1,2,3}
replaceAll(1,5,myList)

function swap (index1,index2,aList)
    string.gsub(aList,"b","d")
    string.gsub(aList,"d","b")
end
myList = {"a","b","c","d"}
swap(myList,0,2)

function createRandomList (n,low,high)
myRandomList = createRandomList(10,1,6)

end
print(myRandomList)

