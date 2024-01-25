return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<CR>", {})
		vim.keymap.set("n", "<leader>hu", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {})
	end,
}
