local stack = require "lib.stack"
local queue = require "lib.queue"


local M = {}
local stackqueue = {
	pushStack = stack:new();
	popStack = stack:new(),
}


function M:description()
	return [[
	用两个栈实现一个队列的功能(push pop front)。
	(队列是先进先出，头可以删除元素，尾可以插入新元素。)
	]]
end

function M:run()
	local answer = [[
  实现：
	一个栈用于存数据，另一个栈从前一个栈获取数据，将数据倒过来存储，以及取数据。
	如果想实现back功能，可以记住push栈中的最后一个移走元素或移动栈时保留一个元素。
	因为栈只能获取顶部元素。
	]]
	print(answer)

	local testData = {2, 3, 1, 5, 8, 2, 7}
	print("testdata:")
	table.print(testData)

	local q = queue:new()
	local data = table.remove(testData)
	print("push:", data)
	q:push(data)
	stackqueue:push(data)
	local data = table.remove(testData)
	print("push:", data)
	q:push(data)
	stackqueue:push(data)

	local data = table.remove(testData)
	print("push:", data)
	q:push(data)
	stackqueue:push(data)

	print("front:", q:front(), stackqueue:front())
	
	local data = table.remove(testData)
	print("push:", data)
	q:push(data)
	stackqueue:push(data)

	print("pop:", q:pop(), stackqueue:pop())

	print("queue dump:")
	q:dump()

	print("stackqueue dump:")
	stackqueue:dump()

	local data = table.remove(testData)
	print("push:", data)
	q:push(data)
	stackqueue:push(data)
	local data = table.remove(testData)
	print("push:", data)
	q:push(data)
	stackqueue:push(data)

	print("queue dump:")
	q:dump()

	print("stackqueue dump:")
	stackqueue:dump()
end


------------------stackqueue--------------------
function stackqueue:push(num)
	self.pushStack:push(num)
end

function stackqueue:move()
	assert(self.popStack:empty(), "pop栈不为空时不能移栈操作，会导致数据混乱")
	for v in self.pushStack:elems() do
		self.popStack:push(v)
	end
	self.pushStack = stack:new()
end

function stackqueue:pop()
	if self:empty() then
		return nil
	end

	if not self.popStack:empty() then
		return self.popStack:pop()
	end

	self:move()
	return self.popStack:pop()
end

function stackqueue:front()
	if self:empty() then
		return nil
	end

	if self.popStack:empty() then
		self:move()
	end
	return self.popStack:top()
end

function stackqueue:empty()
	return self.pushStack:empty() 
			and self.popStack:empty()
end

function stackqueue:dump()
	self.pushStack:dump()

	local t = stack:new()
	for v in self.popStack:elems() do
		t:push(v)
	end
	t:dump()
end

return M
