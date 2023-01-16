return {

    {
	"nvim-treesitter/nvim-treesitter",

	dependencies = {
	    "nvim-treesitter/nvim-treesitter-textobjects",

	},
	build = function()
	    pcall(require("nvim-treesitter.install").update {with_sync= true})
	end,
	config = function()
	    require("nvim-treesitter.configs").setup({
		ensure_installed ={ "bash", "c","help","html","javascript","css"},
		highlight = { 
		    enable= true, 
		},
		indentation = { 
		    enable = true, 
		},
		incremental_selection ={
		    enable= true, 
		    keymaps = {
			init_selection ='gnn',
		    },
		},


	    })
	end

    }

}
