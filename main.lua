require "lib.main"
local stack = require "lib.stack"

local exams = {
	"examples.stack.getMin"
}


for idx, filename in ipairs(exams) do
	print("exam." .. idx)
	local obj = require(filename)

	print(obj:description())
	obj:run()
end
