return {

    {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies= { 'nvim-lua/plenary.nvim'},
	keys = {
	    {"<leader><leader>", function() require('telescope.builtin').find_files({hidden=true}) end},
	    {"<leader><space>", function() require('telescope.builtin').buffers() end},	
	    {"<leader>ff", function() require('telescope.builtin').find_files({hidden=true}) end},
	    {"<leader>fb", function() require('telescope.builtin').current_buffer_fuzzy_find() end},
	    {"<leader>fh", function() require('telescope.builtin').help_tags() end},
	    {"<leader>ft", function() require('telescope.builtin').tags() end},
	    {"<leader>fd", function() require('telescope.builtin').grep_string() end},
	    {"<leader>fp", function() require('telescope.builtin').live_grep() end},
	    {"<leader>fo", function() require('telescope.builtin').tags({ only_current_buffer= true}) end},
	    {"<leader>?", function() require('telescope.builtin').oldfiles() end},


	}

		
    },
    {
    'nvim-telescope/telescope-fzf-native.nvim',
	 cond = vim.fn.executable 'make' ==1, 
	 build = 'make',
    }

	
}
