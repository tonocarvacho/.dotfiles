filetype plugin on
"syntax on
set guicursor=n-v-c:block-Cursor
set guicursor =i:blinkwait5-blinkon500-blinkoff500
set hidden
set nowrap                              " Display long lines as just one line
set number				                      " Line numbers
set relativenumber
set mouse=a				                      " Enable your mouse
set numberwidth=2
set clipboard+=unnamedplus 		          " Copy paste between vim and everything else
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set splitbelow
set splitright
set t_Co=256
set tabstop=2 softtabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
"set cursorline                          " Enable highlighting of the current line
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=200                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set termguicolors
"set autochdir                           " Your working directory will always be the same as your working directory
set noswapfile
set incsearch
set path+=**                            " Provides tab-completion for all file-related task, Search down into subfolders
set wildmenu                            " Display all matching files when we tab complete
"set nohlsearch
set scrolloff=8
set guifont=Inconsolata\ LGC\ Nerd\ Font\ Complete:h11
" LSP
set cot=menuone,noinsert,noselect
let g:completion_confirm_key = "\<C-y>"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_matching_smart_case = 1
let g:completion_trigger_on_delete = 1
set bg=dark
let g:edge_style = 'neon'

set signcolumn=yes:1

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:netrw_banner = 0
" font size
let s:fontsize = 11
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "Inconsolata LGC Nerd Font Complete:" . s:fontsize
endfunction
noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'lewis6991/gitsigns.nvim'
Plug 'APZelos/blamer.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'
Plug 'yuttie/comfortable-motion.vim'
Plug 'tribela/vim-transparent'
Plug 'voldikss/vim-floaterm'
Plug 'p00f/nvim-ts-rainbow'
Plug 'ThePrimeagen/vim-be-good'

" Themes
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'tomasiser/vim-code-dark'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'morhetz/gruvbox'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Plug 'colepeters/spacemacs-theme.vim'
"Plug 'https://github.com/joshdick/onedark.vim.git'

call plug#end()

" Blamer
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_relative_time = 1

let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_removed_above_and_below = '│'
let g:gitgutter_sign_modified_removed = '│'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Smooth scroll
let g:comfortable_motion_friction = 200.0
let g:comfortable_motion_air_drag = 6
nnoremap <silent> <C-d> :call comfortable_motion#flick(160)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-160)<C>

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"let $PATH = "D:\\Programas\\Git\\usr\\bin;" . $PATH

let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeWinSize=35

"let g:airline_theme='onedark'
" coc config
let  g:coc_global_extensions = [
  "\ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" let g:ale_fixers = {
   " '*': ['remove_trailing_lines', 'trim_whitespace'],
   " 'javascript': ['eslint'],
" }
" let g:ale_fix_on_save = 1

"let g:prettier#autoformat = 0
"let g:prettier#autoformat_require_pragma = 0
"let g:prettier#quickfix_enabled = 0

"autocmd TextChanged *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
" VIM CLOSETAG
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx*,*.php,*.js,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml*,php*,js*,tsx*'


" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx*,php*,js*,tsx*'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'


"let $BAT_THEME='dracula'
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"highlight Normal ctermfg=grey ctermbg=black
"let g:solarized_termcolors=256
"let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme dracula
"colorscheme codedark
"colorscheme gruvbox
"colorscheme solarized
"colorscheme spacemacs-theme
"colorscheme monokai_pro
"colorscheme onedark
"colorscheme palenight
hi Normal guibg=NONE ctermbg=NONE
"hi! link Pmenu DraculaBgDark

let mapleader=" "

nnoremap <leader>j :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeFind<CR>

nmap oo m`o<Esc>
nmap OO m`O<Esc>

nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left><C-r>"

nmap <Leader>t :CocCommand prettier.formatFile<CR>
"nmap <Leader>t :CocCommand prettier.formatFile<CR>:w<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :w<CR>:bd<CR>
nmap <Leader>c :bd!<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>h <C-^>
nmap <Leader>u :FloatermNew vifm<CR>

nmap <Leader>s :noh<cr>

" registers
nmap <Leader>p "-p<CR>
nmap <Leader>P "-P<CR>
nnoremap <leader>d "-d
vnoremap <leader>d "-d

" greatest remap ever
"xnoremap p "_dP
"xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland Shortcut for copying to/from System Clipboard
"nnoremap <leader>y "+y
"vnoremap <leader>y "+y
"nnoremap <leader>Y gg"+yG

"nmap <Leader>p "_p<CR>
"nmap <Leader>P "_P<CR>
"nmap <Leader>b :let @a=@*<CR>
"nnoremap <leader>d "_d
"vnoremap <leader>d "_d

" terminal
nmap <Leader>te :term<CR>

 "run codes
nmap <Leader>rj :w !node<CR>
nmap <Leader>rp :w !python<CR>

" config
nmap <Leader>, :e ~/.config/nvim/init.vim<CR>
nmap <Leader>. :w<CR>:source ~/.config/nvim/init.vim<CR>

" ======== TELESCOPE =========
nnoremap <C-p> :Telescope git_files use_git_root=false<CR>
"nnoremap <C-P> :Telescope find_files 
nmap <C-y> :Telescope live_grep hidden=true<CR>
nmap <Leader>l :Telescope buffers<CR>
nnoremap gy :Telescope references<CR>
nnoremap gu :Telescope git_status<CR>
nnoremap gl :Telescope git_branches<CR>
nnoremap gs :Telescope git_bcommits<CR>
nnoremap gp :Telescope git_commits<CR>
" ===========================


" ======== FUGITIVE =========
nnoremap gc :G<CR>
" ===========================

" close terminal
tnoremap <Esc> <C-\><C-n>

" comments
nmap <C-l> <plug>NERDCommenterToggle
xmap <C-l> <plug>NERDCommenterToggle

" ======== Harpoon =========
nnoremap gc :G<CR>
nnoremap <leader>m :lua require("harpoon.mark").add_file()<CR>
nnoremap <C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>
nnoremap <C-h> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-t> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-n> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-s> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>b :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>
" ===========================









let g:coc_node_path = '/home/tono/.nvm/versions/node/v18.4.0/bin/node'

let g:coc_disable_transparent_cursor = 1

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use K to show documentation in preview window.
nnoremap <silent> <C-k> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>=  <Plug>(coc-format-selected)
nmap <leader>=  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>ab  <Plug>(coc-codeaction-selected)
nmap <leader>ab  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>


" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>




let NERDTreeMinimalUI=1
"get rid of [  ] around icons in NerdTree
"syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif
hi CocUnderline guisp=orange gui=undercurl term=undercurl 
hi CocErrorHighlight guisp=red gui=undercurl term=undercurl
hi CocWarningHighlight guisp=orange gui=undercurl term=undercurl

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
      "#bd93f9",
      "#8be9fd",
  --    "#ffb86c",
   --   "#f1fa8c",
    --  "#ff79c6",
     -- "#50fa7b"
      }, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
EOF
