return {

{ 
'itchyny/lightline.vim',
colorscheme ='powerline',
active = { 
	left = {
		'mode','paste'},{'gitbranch','readonly', 'filename','modified'}
	},
component_function ={
	gitbranch ='fugitive#head'
},

 	
},
}



