return 
{ 
		"nvim-telescope/telescope.nvim", 
		dependencies = {
				"nvim-lua/plenary.nvim", 
				"BurntSushi/ripgrep"
		},
		config = function()
				local telescope = require("telescope.builtin")

				vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
				vim.keymap.set("n", "<leader>fg", telescope.grep_string, {})
				vim.keymap.set("n", "<leader>fs", telescope.live_grep, {})


		end
}
