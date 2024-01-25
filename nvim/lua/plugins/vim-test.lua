return {
	"vim-test/vim-test",
	config = function()
		vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>", {})
		vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
		-- vim.g["test#ruby#minitest#file_pattern"] = "_spec.rb"
		--		vim.g["test#ruby#minitest#executable"] = "bundle exec m"
		vim.g["test#ruby#minitest#options"] = "--verbose"
	end,
}
