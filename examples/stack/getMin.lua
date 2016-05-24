local stack = require "lib.stack"


local M = {}
local minstack = {
	data = stack.new();
	minStack = stack.new(),
}


function M:description()
	return [[
  һ�������ջ��ʵ�ַ���ջ����СԪ�ء�
  Ҫ��
	1.pop push getMinʱ�临�Ӷȶ�ΪO(1)
	]]
end

function M:run()
	local answer = [[
  ʵ�֣�
	����һ��ջ��ͬ����¼��Сֵ���ﵽ���Ӷ�ΪO(1)��Ŀ��
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
