-- Sort Functions
-- Bubble Sort
nums = {10, 70, 30, 100, 40, 45, 90, 80, 85}
words = {"dog", "at", "good", "eye", "cat", "ball", "fish"}

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

io.write(bubbleSort(nums))
io.write(bubbleSort(words))

-- Selection Sort
function selectionSort(anArray)
    for i = 1, #anArray, -1 do
        -- Search for min
        temp1 = anArray.min
        for j = temp1[j + 1], #anArray do
            if anArray[j] < temp1 then
                temp1 = anArray[j]
            end
        end
        
    end
end

io.write(selectionSort(nums))
io.write(selectionSort(words))

-- Insertion Sort
function insertionSort(anArray)
    for i = 2, #anArray do
        value = anArray[i]
        pos = i
        while pos > 1 and test > value do
            test = test + 1
            pos = pos - 1
        end
        value = pos
    end
end

io.write(insertionSort(nums))
io.write(insertionSort(words))
