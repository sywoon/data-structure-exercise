local stack = require "lib.stack"


local M = {}

function M:description()
	return [[
  ��ջ����⺺ŵ������
  ��N������ӡ�����ƶ����̺��ƶ��ܲ���
  Ҫ��
	1.ֻ�������ƶ�
	2.����ʵ�ַ������ݹ�ͷǵݹ�
	]]
end

function M:run()
	local answer = [[
  ʵ�֣�
    ����1���ݹ鷨
    1.ֻʣ�����ϲ���Ҫ�ƶ��ĸ������������ �е��� �ҵ��� �е��� ���� �ҵ���
    2.ʣ��N�㣬��A(1-N~1)����һ������ ��N�ƶ��ĸ������ �����Ҿ�����
        a��A���� N���� A�ҵ��� N�е��� A����
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
			-- �����ƶ�
			if from == dir.mid or to == dir.mid then
				local other = (from == dir.left or to == dir.left) 
								and right or left
				-- 1-N~1 ���Ƶ�������
				local part1 = process(num-1, stacks, from, other)

				-- N�Ƶ�Ŀ��
				local v = stacks[from]:pop()
				stacks[to]:push(v)
				print(string.format("move %d form %s to %s", v, from, to))
				local part2 = 1

				-- 1-N~1 �Ƶ�Ŀ��
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
