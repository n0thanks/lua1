function Class(tbl)
    setmetatable(tbl,{
        __call = function (cls,...)
            local self = {}
            setmetatable(self,{__index = cls})
            self:constructor(...)
        end
    })
    return tbl
end

local Organization = Class({
    constructor = function(self,name)
        self:setName(name)
    end;
    getName = function(self)
        return self.name
    end;

    setName = function(self,name)
        self.name = name
    end;
})

local police = Organization("Los Santos Police Department")
local police = setmetatable({name = "Los Santos Police Department"},{__index = Organization})
local news = setmetatable({name = "San Andreas News"},{__index = Organization})

print(police:getName())
print(police:setName())
