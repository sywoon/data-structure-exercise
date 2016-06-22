local stack = require "lib.stack"
local queue = require "lib.queue"


local M = {}
local Animal = {}
local DogCatQueue = {}

function M:description()
	return [[
  猫和狗两种实例，可以放入队列中。
  要求：
	1.可以弹出猫或狗或所有的实例，按照先进先出的顺序
	2.可以判断猫或狗或所有实例，是否为空
	]]
end

function M:run()
	local answer = [[
  实现：
	用两个队列分别存放猫和狗，每增加一种宠物都和一个递增的数值绑定，来判断先后顺序
	]]
	print(answer)

	DogCatQueue:init()

	print("add animal cat")
	DogCatQueue:add(Animal:new("cat"))
	print("add animal cat")
	DogCatQueue:add(Animal:new("cat"))
	print("add animal dog")
	DogCatQueue:add(Animal:new("dog"))
	print("add animal dog")
	DogCatQueue:add(Animal:new("dog"))
	print("add animal cat")
	DogCatQueue:add(Animal:new("cat"))

	print("pop dog")
	DogCatQueue:popDog()
	print("pop dog")
	DogCatQueue:popDog()
	print("dog queue is empty:" .. (DogCatQueue:isDogEmpty() and "true" or "false"))

	print("pop cat")
	DogCatQueue:popCat()
	print("pop all")
	DogCatQueue:popAll()
	print("cat queue is empty:" .. (DogCatQueue:isCatEmpty() and "true" or "false"))
	print("pop all")
	DogCatQueue:popAll()
	print("all queue is empty:" .. (DogCatQueue:isEmpty() and "true" or "false"))
end

local id = 0
local function getId()
	id = id + 1
	return id
end


function Animal:new(types)
	local t = setmetatable({}, self)
	self.__index = self
	self.types = types
	return t
end

function Animal:getTypes()
	return self.types
end



function DogCatQueue:init()
	self.catQueue = queue:new()
	self.dogQueue = queue:new()
end

function DogCatQueue:add(animal)
	local id = getId()
	if animal:getTypes() == "cat" then
		self.catQueue:push({animal=animal, id=id})
	elseif animal:getTypes() == "dog" then 
		self.dogQueue:push({animal=animal, id=id})
	else
		assert(false, "wrong types of animal.")
	end
end

function DogCatQueue:popDog()
	return self.dogQueue:pop().animal
end

function DogCatQueue:popCat()
	return self.catQueue:pop().animal
end

function DogCatQueue:popAll()
	if self.dogQueue:empty() then
		return self.catQueue:pop().animal
	elseif self.catQueue:empty() then
		return self.dogQueue:pop().animal
	else
		local dog = self.dogQueue:pop()	
		local cat = self.catQueue:pop()	
		return dog.id < cat.id and
				dog.animal or cat.animal
	end
end

function DogCatQueue:isDogEmpty()
	return self.dogQueue:empty()
end

function DogCatQueue:isCatEmpty()
	return self.catQueue:empty()
end

function DogCatQueue:isEmpty()
	return self:isDogEmpty() and self:isCatEmpty()
end

return M
