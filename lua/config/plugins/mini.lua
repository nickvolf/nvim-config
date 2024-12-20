return {
	{
		'echasnovski/mini.nvim',
		config = function()
			local statusline = require 'mini.statusline'
			statusline.setup {use_icons = true }
			local minisurround = require 'mini.surround'
			minisurround.setup {}
            require 'mini.pairs'.setup {}
            require 'mini.comment'.setup {}
            require 'mini.cursorword'.setup {}
            require 'mini.animate'.setup {}
            require "mini.surround".setup {}
            require 'mini.starter'.setup {}
            require 'mini.move'.setup {}
            require 'mini.tabline'.setup {}
            require 'mini.bracketed'.setup {}
            require 'mini.clue'.setup {}
		end
	},
}
