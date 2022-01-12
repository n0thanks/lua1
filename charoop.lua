character = {}

function character:new(o,name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.name = name
    self.phrase1 = phrase1
    self.phrase2 = phrase2
    self.level = 0
    return o
end

function character:speak(phrase1)
    self.phrase1 = phrase1
end

function character:speak2(phrase2)
    self.phrase2 = phrase2
end

function character:setLevel(newLevel)
    self.level = self.level + newLevel
end

function character:printStats()
    print(self.name,self.phrase1,self.phrase2,self.level)
end

char1 = character:new(nil,"Spongebob Squarepants")
char1:speak("You're a Goofy Goober")
char1:setLevel(2)
char1:printStats()

char2 = character:new(nil,"Patrick Star")
char2:speak2("The inner machinations of my mind are an enigma")
char2:printStats()
