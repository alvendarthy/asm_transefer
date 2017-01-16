local src_file = arg[1]
local map_file = arg[2]
local dst_file = arg[3]

local cmd_map = require(map_file)

local src = io.open(src_file)

if(nil == src) then
	print("cannot open " .. src_file)
	return
end

function get_var_tab(line)
	local rest
	local vars = {}
	local code, common = string.match(line, "([%S][^;\n]*)[;]*([^\n]*)$")
	if(nil ~= common) then
		vars["common"] = common
	end

	if(nil ~= code)then
		
	end

	return vars
end

repeat
	for line in src:lines() do
		repeat
			-- label
			if(string.find(line, "%s*[%w_]+:"))then
				print(line)
				break	--continue
			end

			
		until true

	end

until(true)

local tab = get_var_tab("   	mov a,b ; asdf")
for i,v  in pairs(tab) do
	print(i .. ":\"" .. v .. "\"")
	print(string.len(v))
end
src:close()
