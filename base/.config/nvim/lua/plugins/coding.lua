return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm direction='float'<CR>", {}),
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
}
