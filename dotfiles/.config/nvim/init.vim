"Notes:
"This is the neovim configuration of 'Özgür Isbert'.
"I will be updating this file on my behalf
"and add/remove certain tools/plugins/setups
"
"Have fun with my neovim config!
  "Global Setup
  set number
  set mouse=a
  set number relativenumber
  set clipboard=unnamedplus
  set nobackup
  set nowritebackup
  set noswapfile
  set laststatus=3
  "Plugins
    call plug#begin()
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
    Plug 'neovim/nvim-lspconfig'
    Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'sindrets/diffview.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'jaredgorski/spacecamp'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'jparise/vim-graphql'
    Plug 'voldikss/vim-floaterm'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'MunifTanjim/prettier.nvim'
    Plug 'jose-elias-alvarez/null-ls.nvim'
    Plug 'MunifTanjim/eslint.nvim'
    call plug#end()
  "Keybinds
    let mapleader=" "
    "Global keybinds
      "noremap <up> <nop>
      "noremap <down> <nop>
      "noremap <left> <nop>
      "noremap <right> <nop>
      nnoremap <SPACE> <nop>

      "inoremap <up> <nop>
      "inoremap <down> <nop>
      "inoremap <left> <nop>
      "inoremap <right> <nop>

      inoremap jk <esc>
    "Telescope keybinds
      nnoremap <leader>ff <cmd>Telescope find_files<cr>
      nnoremap <leader>fg <cmd>Telescope live_grep<cr>
      nnoremap <leader>fb <cmd>Telescope buffers<cr>
      nnoremap <leader>fh <cmd>Telescope help_tags<cr>
    "Tabination-Keybind
      nnoremap <leader>nt <cmd>tabn<cr>
      nnoremap <leader>pt <cmd>tabp<cr>
      nnoremap <leader>tn <cmd>tabnew .<cr>
    "Highlighting-Keybinds
      nnoremap <F3> :set hlsearch!<CR>
        "Floaterm keybinds
      nnoremap <leader>ft <cmd>FloatermNew --autoclose=1 --autohide=1<cr>
      nnoremap <leader>ftp <cmd>FloatermPrev<cr>
      nnoremap <leader>ftn <cmd>FloatermNext<cr>
  "ColorScheme
  set termguicolors

  let g:tokyonight_style = 'night' " available: night, storm
  let g:tokyonight_enable_italic = 0

  colorscheme tokyonight

  lua require("oezguerisbert") 
  "lua require("eslintcfg")
