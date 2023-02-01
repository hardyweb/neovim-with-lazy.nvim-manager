return {

	{
		"nvim-treesitter/nvim-treesitter",

		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
<<<<<<< Updated upstream
		--	"p00f/nvim-ts-rainbow",
=======
			--"p00f/nvim-ts-rainbow",
>>>>>>> Stashed changes
			"windwp/nvim-ts-autotag",
			"nvim-treesitter/nvim-treesitter-context",
			"nvim-treesitter/playground",

		},
		build = function()
			pcall(require("nvim-treesitter.install").update { with_sync = true })
		end,
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "bash", "c", "help", "html", "javascript", "css" },
				highlight = {
					enable = true,
					disable = {"html","php"},
				},
				indentation = {
					enable = true,
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = 'gnn',
						node_incremental = 'grn',
						scope_incremental = 'grm',
					},
				},
				indent = {
					enable = true,
				},

				textobjects = {
					select = {

						enable = true,
						lookahead = true,
						keymaps = {
							['af'] = '@function.outer',
							['if'] = '@function.inner',
							['ac'] = '@class.outer',
							['ic'] = '@class.inner',
						},
					},
					move = {

						enable = true,
						set_jumps = true,

						goto_next_start = {
							[']m'] = '@function.outer',
							[']]'] = '@class.outer',
						},
						goto_next_end = {
						    [']M']='@function.outer',
						    ['][']='@class.outer',
						},
						goto_previous_start ={
						    ['[m']='@function.outer',
						    ['[[']='@class.outer',
						},
						goto_previous_end = {
						    ['[M]']='@function.outer',
						    ['[]']='@class.outer', 
						},

					},

				},
				matchup={
				 enable=true
				},
<<<<<<< Updated upstream
		--		rainbow = {
					-- enable=false,
				--	extended_mode=true,
				--	max_file_lines= nil
			--	},
=======
				-- rainbow = {
				--  enable=true,
				-- 	extended_mode=true,
				-- 	max_file_lines= nil
				-- },
>>>>>>> Stashed changes
				autotag ={
				 enable =true,
				}


			})
		end

	}

}
