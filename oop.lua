car = {}

function car:new(o,year,make,model)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.year = year
    self.make = make
    self.model = model
    self.running = false
    self.speed = 0
    return o
end

function car:turnOn()
    self.running = true
end

function car:turnOff()
    self.running = false
end

function car:changeSpeed(accel)
    self.speed = self.speed + accel
end

function car:printStats()
    print(self.year,self.make,self.model,self.running,self.speed)
end

car1 = car:new(nil,2018,"Ford","Mustang")
car1:turnOn()
car1:changeSpeed(50)
car1:printStats()
car1:changeSpeed(30)
car1:printStats()
car1:changeSpeed(-80)
car1:turnOff()
car1:printStats()

car2 = car:new(nil,1962,"Ferrari","250 GTO")
car2:printStats()

car3 = car:new(nil,2016,"Bugatti","Chiron")
car3:printStats()
