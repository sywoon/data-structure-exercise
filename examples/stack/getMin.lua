local stack = require "lib.stack"


local M = {}
local minstack = {
	data = stack.new();
	minStack = stack.new(),
}


function M:description()
	return [[
  一个特殊的栈，实现返回栈中最小元素。
  要求：
	1.pop push getMin时间复杂度都为O(1)
	]]
end

function M:run()
	local answer = [[
  实现：
	用另一个栈来同步记录最小值，达到复杂度为O(1)的目的
	]]
	print(answer)

	local testData = {2, 3, 1, 5, 8, 2, 7}
	for _, v in ipairs(testData) do
		minstack:push(v)
	end

	print("testdata:")
	minstack:dump()

	while not minstack:empty() do
		print("getmin:", minstack:getmin())
		print("----------")
		print("pop:", minstack:pop())
		minstack:dump()
	end
end


------------------minstack--------------------
function minstack:push(num)
	self.data:push(num)

	local min = num
	if not self.minStack:empty() then
		min = math.min(min, self.minStack:top())
	end
	self.minStack:push(min)
end

function minstack:pop()
	self.minStack:pop()
	return self.data:pop()
end

function minstack:getmin()
	return self.minStack:top()
end

function minstack:empty()
	return self.minStack:empty()
end

function minstack:dump()
	self.data:dump()
end

return M
