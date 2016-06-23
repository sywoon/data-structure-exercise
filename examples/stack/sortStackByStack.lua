local stack = require "lib.stack"


local M = {}

function M:description()
	return [[
  用另一个栈对一个栈的数值从大到小排序 
  要求：
	1.只能用额外的一个栈
	]]
end

function M:run()
	local answer = [[
  实现：
    依次弹出数据到辅助栈，如果小于栈顶元素则入栈，
	否则先将辅助栈的内容弹回到原来的栈，直到小于该数值。
	循环这个过程，直到原始栈为空。
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
