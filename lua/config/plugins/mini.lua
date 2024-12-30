return {
	{
		'echasnovski/mini.nvim',
		config = function()
			local statusline = require 'mini.statusline'
			statusline.setup {use_icons = true }
            require 'mini.ai'.setup {}
            require 'mini.animate'.setup {}
            require 'mini.bracketed'.setup {}
            require 'mini.clue'.setup {}
            require 'mini.comment'.setup {}
            require 'mini.cursorword'.setup {}
            require 'mini.move'.setup {}
            require 'mini.notify'.setup {}
            require 'mini.pairs'.setup {}
            require 'mini.starter'.setup {}
			require 'mini.surround'.setup {}
            require 'mini.tabline'.setup {}
		end
	},
}
