function _G.put(...)
  local objects = {}
  for i = 1, select('#', ...) do
    local v = select(i, ...)
    table.insert(objects, vim.inspect(v))
  end

  print(table.concat(objects, '\n'))
  return ...
end

function _G.termcode(str)
    -- Adjust boolean arguments as needed
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.req(filepath)
	local ok, errors = pcall(require, filepath)
	if not ok then
		print("the file '"..filepath.."' has errors: "..errors)
	end
end


