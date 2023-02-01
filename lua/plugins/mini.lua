return {

	'echasnovski/mini.nvim',
	version='*',
	lazy= true, 
	keys ={

	{"<leader><leader>", function()
		
	end
	}
	
	},
	config = function ()
		require("mini.pairs").setup()
	--	require("mini.ai").setup()
	end
}
