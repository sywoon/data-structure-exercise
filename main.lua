require "lib.main"

local exams = {
	"examples.stack.getMin",
	"examples.stack.twoStackQueue",
}


local stack = require "lib.stack"
local queue = require "lib.queue"
local q = queue:new()
q:push(1):push(4):push(2):push(8):push(5)
q:dump()

print("front:", q:front())
print("back:", q:back())

for idx, filename in ipairs(exams) do
	print("exam." .. idx)
	local obj = require(filename)

	print(obj:description())
end

print("input which exam you want to run:")
local num = tonumber(io.read())
if exams[num] then
	local obj = require(exams[num])
	obj:run()
end

