if exists("&termguicolors") && exists("&winblend")

lua << EOF
EOF

   set winblend=0
   set wildoptions=pum
   set pumblend=5
   " set background=dark
   colo vscode
   " colo vscodeL

endif

