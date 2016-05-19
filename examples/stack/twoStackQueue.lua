local stack = require "lib.stack"
local queue = require "lib.queue"


local M = {}
local stackqueue = {
	pushStack = stack:new();
	popStack = stack:new(),
}


function M:description()
	return [[
	������ջʵ��һ�����еĹ���(push pop front)��
	(�������Ƚ��ȳ���ͷ����ɾ��Ԫ�أ�β���Բ�����Ԫ�ء�)
	]]
end

function M:run()
	local answer = [[
  ʵ�֣�
	һ��ջ���ڴ����ݣ���һ��ջ��ǰһ��ջ��ȡ���ݣ������ݵ������洢���Լ�ȡ���ݡ�
	�����ʵ��back���ܣ����Լ�סpushջ�е����һ������Ԫ�ػ��ƶ�ջʱ����һ��Ԫ�ء�
	��Ϊջֻ�ܻ�ȡ����Ԫ�ء�
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
	assert(self.popStack:empty(), "popջ��Ϊ��ʱ������ջ�������ᵼ�����ݻ���")
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
