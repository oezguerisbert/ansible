local o = vim.o

o.relativenumber = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 0
o.expandtab = true
o.swapfile = false
o.termguicolors = true
o.autointend = true
o.smartintend = true
o.laststatus = 3
o.backup = false
o.mouse="a"
o.clipboard="unnamedplus"

local req = function(filepath)
	local ok, errors = pcall(require, filepath)
	if not ok then
		print("the file '"..filepath.."' has errors: "..errors)
	end
end


req("globals")
req("plugins")
req("keymaps")
req("config")
