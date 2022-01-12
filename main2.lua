-- Helper Functions
local function read_file(path)
    local file = io.open(path, "rb") -- r read mode and b binary mode
    local text_data = file:read "*a" -- *a reads the whole file
    file:close()

    word_array = {}
    for token in string.gmatch(text_data, "[^%s]+") do
      word_array[#word_array + 1] = tonumber(token)
    end
    return word_array
end

local function print_array(array, start, stop)
    for i = start, stop do
        print(array[i])
    end
end

-- Load data files into arrays
local randomData = read_file("data-files/random-values.txt")
local reversedData = read_file("data-files/reversed-values.txt")
local nearlySortedData = read_file("data-files/nearly-sorted-values.txt")
local fewUniqueData = read_file("data-files/few-unique-values.txt")

-- Print first 50 values of each array to verify contents
--[[print(type(randomData[16]))
print("***RANDOM DATA***")
print_array(randomData, 1, 50)
print("***REVERSED DATA***")
print_array(reversedData, 1, 50)
print("***NEARLY SORTED DATA***")
print_array(nearlySortedData, 1, 50)
print("***FEW UNIQUE DATA***")
print_array(fewUniqueData, 1, 50)--]]

-- Bubble Sort
function bubbleSort(anArray)
    for j = 1, #anArray do
            for i = 1, #anArray - 1 do
                if anArray[i] > anArray[i + 1] then
                    -- swap element at i and i + 1
                    temp = anArray[i]
                    anArray[i] = anArray[i + 1]
                    anArray[i + 1] = temp
                end
            end
    end
end

print("Bubble Sort:")
local startTime = os.time()
bubbleSort(randomData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
bubbleSort(reversedData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
bubbleSort(nearlySortedData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
bubbleSort(fewUniqueData)
local endTime = os.time()
print(os.difftime(endTime,startTime))

-- Selection Sort
function selectionSort(anArray)
    for i = 1, #anArray -1 do
        -- Search for min
        temp1 = i
        for j = i + 1, #anArray do
            if anArray[j] < anArray[temp1] then
                temp1 = j
            end
        end
        anArray[i], anArray[temp1] = anArray[temp1], anArray[i]
    end
end

print("\nSelection Sort:")
local startTime = os.time()
selectionSort(randomData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
selectionSort(reversedData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
selectionSort(nearlySortedData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
selectionSort(fewUniqueData)
local endTime = os.time()
print(os.difftime(endTime,startTime))

-- Insertion Sort
function insertionSort(anArray)
    for i = 2, #anArray do
        value = anArray[i]
        pos = i
        while pos > 1 and anArray[pos - 1] > value do
            anArray[pos] = anArray[pos - 1]
            pos = pos - 1
        end
        anArray[pos] = value
    end
end

print("\nInsertion Sort:")
local startTime = os.time()
insertionSort(randomData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
insertionSort(reversedData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
insertionSort(nearlySortedData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
local startTime = os.time()
insertionSort(fewUniqueData)
local endTime = os.time()
print(os.difftime(endTime,startTime))
