lua require('plugs')
" lua require('rule')

runtime ./vim/rule.vim
runtime ./vim/quickKeys.vim
runtime ./vim/scrmaps.vim
runtime ./vim/fileType.vim
runtime ./vim/theme.vim
runtime ./vim/tabline.vim
" runtime ./vim/plugins/defx.rc.vim

lua << EOF

local lua_plugins = {
	"plugins.lspconfig",
	-- "plugins.lualine",
	"plugins.clorizer",
	"plugins.autopairs",
	"plugins.cmp",
	"plugins.snip",
	"plugins.telescope",
    "plugins.null",
    "plugins.server",
    -- "plugins.treesitter",
}

for _, v in ipairs(lua_plugins) do
    require(v)
end

EOF
