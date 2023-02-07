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
  	require("mini.pairs").setup({

	mappings= {
		['"'] = {register = {cr=true}},
		["'"] = {register = {cr=true}},
		},
	})
	require("mini.surround").setup()
	end
}
