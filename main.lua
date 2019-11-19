require "lib.init"

function getAllFiles()
	local files = os.dir("examples")
	for i = 1, #files do
		local str = string.gsub(files[i], "/", ".")
		str = string.gsub(str, "%.lua", "")
		files[i] = str
	end
	table.print(files)
	return files
end

function showExams(exams)
	for idx, filename in ipairs(exams) do
		print("exam." .. idx)
		local obj = require(filename)

		print(obj:description())
	end
end

function run(exams)
	showExams(exams)

	print("input which exam you want to run:")
	local num = tonumber(io.read())
	if exams[num] then
		local obj = require(exams[num])
		obj:run()
		return true
	else
		return false	
	end
end

local exams = getAllFiles()
while run(exams) do
	print("\n")
end

