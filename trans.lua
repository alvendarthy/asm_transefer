local src_file = arg[1]
local map_file = arg[2]
local dst_file = arg[3]

local conf = require(map_file)
local cmd_map = conf.map

local src = io.open(src_file)

if(nil == src) then
	print("cannot open " .. src_file)
	return
end

function get_var_tab(line)
	local rest
        local vars = {}
        local codes, common = string.match(line, "([^;\n]*)[;]*([^\n]*)$")
        if(nil ~= common) then
                vars["common"] = common
        end

        if(nil ~= codes)then
                rest = codes

                local code , rest = string.match(rest, "(%S+)(.*)")
                if(code == nil) then
                        return vars
                end
                table.insert(vars, code)

                while(1) do
                        code , rest = string.match(rest, "([^,]+)(.*)")
                        if(code == nil) then
                                break
                        end
                        table.insert(vars, code)
                end
        end

        return vars
end

if(conf.before) then
	conf.before()
end

repeat
	for line in src:lines() do
		local vars = {}
		local old_cmd = nil
		local new_cmd = nil
		local i = nil
		local out = nil
		local out_code = ""

		repeat
			-- label
			if(string.find(line, "%s*[%w_]+:"))then
				print(line)
				break	--continue
			end

			-- codes
			vars = get_var_tab(line)

			if(#vars < 1) then
				break;
			end

			old_cmd = vars[1]
			new_cmd = cmd_map[string.upper(old_cmd)]
			if(nil == new_cmd) then
				vars.common = " !!!!!!!! BAD CODE"
				print(line)
				break
			end
			if(type(new_cmd) == "function") then
				new_cmd(vars)
			else
				vars[1] = new_cmd
			end

			i = 0
			out_code = "\t"
			for i = 1, #vars do
				if(nil ~= vars[i]) then
				if(i == 2) then 
					out_code = out_code .. " " 
				elseif (i > 2) then
					out_code = out_code .. ", " 
				end
				out_code = out_code .. vars[i]
				end
				
			end
		until true

		
		local common = vars.common or ""
		if(string.len(out_code) + string.len(common) > 0)then
			out = string.format("\t%-32s\t;%s", out_code, common)
			print(out)
		end

	end

until(true)

if(conf.after) then
        conf.after()
end

src:close()
