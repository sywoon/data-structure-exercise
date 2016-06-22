require "lib.main"

local exams = {
	"examples.stack.getMin",
	"examples.stack.twoStackQueue",
	"examples.stack.reverse",
	"examples.stack.catDogQueue",
}

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

