local table = table
local setmetatable = setmetatable
local ipairs = ipairs
local print = print

local base = _ENV
local M = {}
local _ENV = M 

function size(t)
	return #t
end

function empty(t)
	return size(t) == 0
end

function push(t, d)
	table.insert(t, d)
	return t
end

function pop(t)
	if empty(t) then
		return nil
	end
	return table.remove(t, 1)
end

function front(t)
	if empty(t) then
		return nil
	end
	return t[1]
end

function back(t)
	if empty(t) then
		return nil
	end
	return t[#t]
end

function elems(t)
	local n = #t + 1
	local iter = function (t)
		n = n - 1
		if n > 0 then
			return t[n]
		end
		return nil
	end
	return iter, t, true
end

function dump(t, func)
	func = func or print
	for k in elems(t) do
		func(k)
	end
end


local mt = {}
function new(t)
	local t = setmetatable({}, mt)
	for _, v in ipairs(t or {}) do
		table.insert(t, v)
	end
	return t
end


mt.__index = M

return M
