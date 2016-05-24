local stack = require "lib.stack"


local M = {}

function M:description()
	return [[
  用递归函数逆序一个栈 
  要求：
	1.只能用栈的方法函数
	]]
end

function M:run()
	local answer = [[
  实现：
	用两个递归函数(利用递归函数展开时的栈来暂存数据):
	1.取出栈底元素并返回
	2.逆序栈
	]]
	print(answer)

	local getAndRemoveLastStack
	getAndRemoveLastStack = function(s)
		local topData = s:pop()
		if s:empty() then
			return topData
		end
		local lastData = getAndRemoveLastStack(s)
		s:push(topData)
		return lastData
	end

	local reverse
	reverse = function (s)
		if s:empty() then
			return
		end
		local lastData = getAndRemoveLastStack(s)
		reverse(s)
		s:push(lastData)
	end


	local testData = stack.new({2, 3, 1, 5, 8, 2, 7})
	print("testdata:")
	testData:dump()

	reverse(testData)
	print("reverse data:")
	testData:dump()
end


return M
