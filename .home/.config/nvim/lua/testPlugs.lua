require('packer').startup(function()
	use ({'tpope/vim-fugitive', opt = true})
	use ({'tpope/vim-rhubarb', opt = true})

    use ({'Shougo/defx.nvim', run = ':UpdateRemoteuseins', opt = true})

    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    })
    use({
      "nvim-treesitter/nvim-treesitter-textobjects",
      requires = "nvim-treesitter/nvim-treesitter",
    })

    use 'blackCauldron7/surround.nvim'

    use 'lewis6991/gitsigns.nvim'

	use ({'kchmck/vim-coffee-script', opt = true})
end
