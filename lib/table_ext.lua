local pairs = pairs
local type = type
local string = string
local next = next
local setmetatable = setmetatable
local getmetatable = getmetatable
local tointeger = math.tointeger

local _print = print
local _tostring = tostring

local base = _ENV
local M = table
local _ENV = M


function empty(t)
	return not next(t)
end

--get elements amount if table is a map
function size(t)
	local n = 0
	for _ in pairs(t or {}) do
		n = n + 1
	end

	return n
end

function indices(t)
	local u = {}
	for k in pairs(t or {}) do
		insert(u, k)
	end
	return u
end

function values(t)
	local u = {}
	for _, v in pairs(t or {}) do
		insert(u, v)
	end
end

function invert(t)
	local u = {}
	for k, v in pairs(t or {}) do
		u[v] = k
	end
	return u
end

function clone(t, nometa)
	local u = {}
	if not nometa then
		setmetatable(u, getmetatable(t))
	end

	for k, v in pairs(t) do
		u[k] = v
	end
	return u
end

function merge(t, u)
	local r = clone(t)
	for k, v in pairs(u) do
		r[k] = v
	end
	return r
end


function tostring(t, level, pre)
	local bTop = nil == pre
	pre = pre and "  " .. pre or "  "
	
	level = level and (level - 1) or 10
	if level < 0 then
		return pre .. "..."
	end
	
	local strs = {}
	if bTop then
	    insert(strs, "{")
	    insert(strs, "\n")
	end
	
	local line = 1
	for k, v in pairs(t) do
	    if line > 1 then
	        insert(strs, "\n")
	    end
	    
	    if type(k) == 'table' then
	        insert(strs, pre)
	        insert(strs, "{\n")
	        
	        if not empty(k) then
	          local sub = tostring(k, level, pre)
	          insert(strs, sub)
	          insert(strs, "\n")
	        end
	
	        insert(strs, pre)
	        insert(strs, "}=")
	    else
	        insert(strs, pre)
	        if type(k) == "number" then
				local temp = string.format("[%s]", _tostring(k))
				insert(strs, temp)
	        else
				insert(strs, _tostring(k))
	        end
	        insert(strs, "=")
	    end
	    
	    if type(v) == 'table' then
	        insert(strs, "\n")
	        insert(strs, pre)
	        insert(strs, "{\n")
	        
	        if not empty(v) then
	            local sub = tostring(v, level, pre)
	            insert(strs, sub)
	            insert(strs, "\n")
	        end
	
	        insert(strs, pre)
	        insert(strs, "},")
	    else
	        if type(v) == "number" then
	            insert(strs, _tostring(v))
	        elseif type(v) == "string" then
	            local temp = string.format("\"%s\"", v)
	            insert(strs, temp)
			else
	            insert(strs, _tostring(v))
	        end
	        insert(strs, ",")
	    end
	    
	    line = line + 1
	end
	
	if bTop then
	    insert(strs, "\n")
	    insert(strs, "}")
	end
	return concat(strs)
end


function print(t)
    if type(t) ~= "table" then
        _print(t)
    else
        local str = tostring(t)
        _print(str)
    end
end


return M
