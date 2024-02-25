return {
		"nvim-tree/nvim-tree.lua",
		dependencies = {
				"nvim-tree/nvim-web-devicons",
		},
		config = function()
				local nvimtree = require("nvim-tree")

				-- disable netrw at the very start of your init.lua
				vim.g.loaded_netrw = 1
				vim.g.loaded_netrwPlugin = 1

				nvimtree.setup({
						sort = {
								sorter = "case_sensitive",
						  },
						view = {
								width = 40,
						},
						renderer = {
								group_empty = true,
								indent_markers = { enable = true},
								icons = {
										show = {
												file = true,
												folder = true,
												folder_arrow = true,
												git = true
										}
								}
						},
						git = {
								ignore = false
						}
				})

				vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
				vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFile<CR>")
				vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")
				vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>")
		end
}
