-- see if the file exists
function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end

local mark = require("harpoon.mark")

function load_scope()
    local file = string.format("%s/scope.txt",vim.loop.cwd())
    print(file)
    if not file_exists(file) 
    then 
        print(string.format("Scope file not found: %s", file))
        return {} 
    end
    -- clearing all harpoon marks
    mark.clear_all()
    -- loop thru scope file and try to ard marks
    for line in io.lines(file) do 
        mark.add_file(line)
        print(line)
    end
end

vim.api.nvim_create_user_command("LoadScope",load_scope,{})
