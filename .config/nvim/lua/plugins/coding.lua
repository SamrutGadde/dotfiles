return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm direction='float'<CR>", {}),
		},
	},
}
