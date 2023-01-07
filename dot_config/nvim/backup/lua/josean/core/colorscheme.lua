-- Transparency things
require("tokyonight").setup({
	transparent = true,
	sidebars = { "qf", "help" },
})

-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
