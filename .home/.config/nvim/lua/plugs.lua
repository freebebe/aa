-- Install packer (cookie)
-- local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
--
-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--   vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
-- end
--

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)

local packer = require('packer')
local use = packer.use

packer.init({
  -- Some jobs never finish updating when I don't limit the number.
  -- https://github.com/wbthomason/packer.nvim/issues/456
  max_jobs = 20,
})

require('packer').startup(function()
	use ('wbthomason/packer.nvim') -- Package manager

	use ('tomtom/tcomment_vim')

    use ({'hoob3rt/lualine.nvim', opt = true})


	use ('neovim/nvim-lspconfig')   -- use a language server
	use ('hrsh7th/cmp-nvim-lsp')
	use ('hrsh7th/cmp-buffer')
	use ('hrsh7th/nvim-cmp')        -- for completion whilst using the language server
	use ({'github/copilot.vim', opt = true}) -- for AI completion

    use ({'hrsh7th/vim-vsnip', after = 'nvim-cmp'})
	use ({'hrsh7th/cmp-vsnip', after = 'vim-vsnip' })

    use ('Yggdroot/indentLine')

	use ({
	  'nvim-telescope/telescope.nvim',
	  requires =  {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'} 
	})

    use ({'mg979/vim-visual-multi', branch = 'master'})
    use ('windwp/nvim-autopairs')             -- {} () <>
	use ('mattn/emmet-vim')
	use ('norcalli/nvim-colorizer.lua')

    use ({
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    })

    use ({
    'jose-elias-alvarez/nvim-lsp-ts-utils',
    require = { 'neovim/nvim-lspconfig', 'jose-elias-alvarez/null-ls.nvim' },
    })


end)

if os.getenv('INSTALL') then
  goto eof
end
::eof::
