au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red


lua << EOF
vim.g.vscode_style = "dark"
local vscode = require("theme.vscode")
vscode.set()
EOF

" https://github.com/Mofiqul/vscode.nvim
