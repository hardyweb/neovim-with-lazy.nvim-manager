return {

	'rmagatti/goto-preview',
	
	lazy= true, 
	keys ={

	{"<leader><leader>", function()
		
	end
	}
	
	},
	config = function ()
		require("goto-preview").setup{} 
	end
}
