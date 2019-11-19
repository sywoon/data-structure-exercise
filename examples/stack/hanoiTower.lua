local stack = require "lib.stack"


local M = {}

function M:description()
	return [[
  用栈来求解汉诺塔问题
  求N层塔打印最优移动过程和移动总步数
  要求：
	1.只能相邻移动
	2.两种实现方案：递归和非递归
	]]
end

function M:run()
	local answer = [[
  实现：
    方法1：递归法
    1.只剩下最上层需要移动的各种情况：左到中 中到右 右到中 中到左 左到右 右到左
    2.剩下N层，将A(1-N~1)看作一个整体 将N移动的各种情况 以左到右举例：
        a、A左到右 N左到中 A右到左 N中到右 A左到右
	]]
	print(answer)
	
	local dir = {left="left", mid="mid", right="right"}

	local function process(num, stacks, from, to)
		if num == 1 then
			if from == dir.mid or to == dir.mid then
				local v = stacks[from]:pop()
				stacks[to]:push(v)
				print(string.format("move %d form %s to %s", v, from, to))
				return 1
			else
				local v = stacks[from]:pop()
				stacks.mid:push(v)
				print(string.format("move %d form %s to %s", v, from, dir.mid))

				stacks[to]:push(stacks.mid:pop())
				print(string.format("move %d form %s to %s", v, dir.mid, to))
				return 2
			end
		else
			-- 相邻移动
			if from == dir.mid or to == dir.mid then
				local other = (from == dir.left or to == dir.left) 
								and right or left
				-- 1-N~1 先移到第三方
				local part1 = process(num-1, stacks, from, other)

				-- N移到目标
				local v = stacks[from]:pop()
				stacks[to]:push(v)
				print(string.format("move %d form %s to %s", v, from, to))
				local part2 = 1

				-- 1-N~1 移到目标
				local part3 = process(num-1, stacks, other, to)
				return part1 + part2 + part3
			else
				local part1 = process(num-1, stacks, from, to)

				local v = stacks[from]:pop()
				stacks.mid:push(v)
				print(string.format("move %d form %s to %s", v, from, dir.mid))
				local part2 = 1

				local part3 = process(num-1, stacks, to, from)

				local v = stacks[dir.mid]:pop()
				stacks[to]:push(v)
				print(string.format("move %d form %s to %s", v, dir.mid, to))
				local part4 = 1

				local part5 = process(num-1, stacks, from, to)
				return part1 + part2 + part3 + part4 + part5
			end
		end
	end

    local function doHanoiA()
		local left = stack.new({3,2,1})
		local middle = stack.new()
		local right = stack.new()
		local stacks = {left=left, mid=middle, right=right}

		print("---begin---")
		for name, stack in pairs(stacks) do
			print(name)
			stack:dump()
		end

		local count = process(left:size(), stacks, dir.left, dir.right)

		print("---result---" .. count)
		for name, stack in pairs(stacks) do
			print(name)
			stack:dump()
		end
    end

	doHanoiA()
end


return M
