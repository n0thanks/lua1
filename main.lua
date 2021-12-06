-- Helper Functions
local function read_file(path)
    local file = io.open(path, "rb") -- r read mode and b binary mode
    local text_data = file:read "*a" -- *a reads the whole file
    file:close()

    word_array = {}
    for token in string.gmatch(text_data, "[^%s]+") do
        word_array[#word_array + 1] = token
    end
    return word_array
end

local function print_array(array, start, stop)
    for i = start, stop do print(array[i]) end
end

-- Load data files into arrays
Dictionary = read_file("data-files/dictionary.txt")
AliceWords = read_file("data-files/AliceInWonderLand.txt")

-- Print first 50 values of each array to verify contents
print("***DICTIONARY***")
print_array(Dictionary, 1, 50)
print("***ALICEWORDS***")
print_array(AliceWords, 1, 50)

function LinearSearch(anArray, item)
    for i = 1, #anArray do if anArray[i] == item then return i end end
    return -1
end

function BinarySearch(anArray, item)
    LI = 1
    UI = #anArray
    while LI <= UI do
        MI = math.floor((LI + UI) / 2)
        if anArray[MI] == item then
            return MI
        elseif anArray[MI] < item then
            LI = MI + 1
        else
            UI = MI - 1
        end
    end
    return -1
end

while true do

    io.write("\nMain Menu\n")
    io.write("1: Spell Check a Word (Linear Seach)\n")
    io.write("2: Spell Check a Word (Binary Search)\n")
    io.write("3: Spell Check Alice In Wonderland (Linear Search)\n")
    io.write("4: Spell Check Alice In Wonderland (Binary Search)\n")
    io.write("5: Exit\n")
    io.write("Enter menu selection (1-5): ")
    local selection = io.read()

    if selection == "1" then
        io.write("Please enter a word: ")
        local word = io.read()
        local startTime = os.time()
        local index = LinearSearch(Dictionary, word)
        if index == -1 then
            io.write(word .. " not in dictionary. (")
            local endTime = os.time()
            io.write(os.difftime(endTime, startTime), " seconds)\n")
        else
            io.write(word .. " in dictionary at position " .. index, ". (")
            local endTime = os.time()
            io.write(os.difftime(endTime, startTime), " seconds)\n")
        end
    elseif selection == "2" then
        io.write("Please enter a word: ")
        local word = io.read()
        local startTime = os.time()
        local index = BinarySearch(Dictionary, word)
        if index == -1 then
            io.write(word .. " not in dictionary. (")
            local endTime = os.time()
            io.write(os.difftime(endTime, startTime), " seconds)\n")
        else
            io.write(word .. " in dictionary at position " .. index, ". (")
            local endTime = os.time()
            io.write(os.difftime(endTime, startTime), " seconds)\n")
        end
    elseif selection == "3" then
        io.write("Spell Check Alice Linear\n")
        local startTime = os.time()
        local count = 0
        local index = LinearSearch(Dictionary, AliceWords.lowercase)
        for i = 1, #AliceWords do
            if index[i] == -1 then
                count = count + 1
        end
        io.write("Number of words not found in dictionary: ", count, " (")
        local endTime = os.time()
        io.write(os.difftime(endTime, startTime), " seconds)\n")
    end
    elseif selection == "4" then
        io.write("Spell Check Alice Binary\n")
        local startTime = os.time()
        local count = 0
        local index = BinarySearch(Dictionary, AliceWords.lowercase)
        for i = 1, #AliceWords do
            if index[i] == -1 then
                count = count + 1
        end
        io.write("Number of words not found in dictionary: ", count, " (")
        local endTime = os.time()
        io.write(os.difftime(endTime, startTime), " seconds)\n")
    end
    elseif selection == "5" then
        io.write("Program Terminated")
        os.exit()
    end
end
