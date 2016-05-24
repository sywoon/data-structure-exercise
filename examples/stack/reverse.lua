local stack = require "lib.stack"


local M = {}

function M:description()
	return [[
  �õݹ麯������һ��ջ 
  Ҫ��
	1.ֻ����ջ�ķ�������
	]]
end

function M:run()
	local answer = [[
  ʵ�֣�
	�������ݹ麯��(���õݹ麯��չ��ʱ��ջ���ݴ�����):
	1.ȡ��ջ��Ԫ�ز�����
	2.����ջ
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
