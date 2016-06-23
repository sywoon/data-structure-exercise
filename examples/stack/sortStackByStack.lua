local stack = require "lib.stack"


local M = {}

function M:description()
	return [[
  ����һ��ջ��һ��ջ����ֵ�Ӵ�С���� 
  Ҫ��
	1.ֻ���ö����һ��ջ
	]]
end

function M:run()
	local answer = [[
  ʵ�֣�
    ���ε������ݵ�����ջ�����С��ջ��Ԫ������ջ��
	�����Ƚ�����ջ�����ݵ��ص�ԭ����ջ��ֱ��С�ڸ���ֵ��
	ѭ��������̣�ֱ��ԭʼջΪ�ա�
	]]
	print(answer)

	local sOrigin = stack:new()
	local sHelp = stack:new()

	math.randomseed(os.time())

	sOrigin:push(math.random(1, 100))
	sOrigin:push(math.random(1, 100))
	sOrigin:push(math.random(1, 100))
	sOrigin:push(math.random(1, 100))
	sOrigin:push(math.random(1, 100))
	sOrigin:push(math.random(1, 100))
	sOrigin:push(math.random(1, 100))
	print("origin data")
	sOrigin:dump()

	while not sOrigin:empty() do
		local d = sOrigin:pop()
		if sHelp:empty() then
			sHelp:push(d)
		else
			while not sHelp:empty() and sHelp:top() > d do
				sOrigin:push(sHelp:pop())
			end
			sHelp:push(d)
		end
	end

	while not sHelp:empty() do
		sOrigin:push(sHelp:pop())	
	end

	print("sorted data")
	sOrigin:dump()
end


return M
