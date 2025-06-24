return {
	'navarasu/onedark.nvim',
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("onedark").setup({
			style = "deep",
		})
		vim.cmd.colorscheme("onedark")
	end,
}
