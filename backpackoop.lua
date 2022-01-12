backpack = {}

function backpack:new(o,colour,size)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.colour = colour
    self.size = size
    self.items = {}
    self.open = false
    return o
end

function backpack:putIn(item)
    self.items = item
end

function backpack:takeOut(item)
    self.items = item
end

function backpack:openBag()
    self.open = true
end

function backpack:closeBag()
    self.open = false
end

function backpack:printStats()
    print(self.colour,self.size,table.concat(self.items),self.open)
end

pack1 = backpack:new(nil,"blue","small")
pack1:openBag()
pack1:putIn({"lunch"})
pack1:putIn({"jacket"})
pack1:printStats()
pack1:closeBag()
pack1:printStats()
pack1:openBag()
pack1:takeOut({"jacket"})
pack1:printStats()
pack1:closeBag()
pack1:printStats()

pack2 = backpack:new(nil,"red","medium")
pack2:printStats()

pack3 = backpack:new(nil,"green","large")
pack3:printStats()
