let mapleader = " "

set cc=80
set cmdheight=2
set expandtab
set exrc
set guicursor=i:block
set hidden
set ignorecase
set incsearch
set mouse=a
set nobackup
set nohlsearch
set noswapfile
set nowrap
set nowritebackup
set number relativenumber
set scrolloff=6
set secure
set shiftwidth=0
set shortmess+=c
set signcolumn=yes
set smartcase
set splitbelow splitright
set tabstop=4
set updatetime=300

" Remaps for moving lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Yankadoodle
nnoremap Y y$

" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Remaps for indent and outdent
vnoremap > >gv
vnoremap < <gv

" Remap for reload of current buffer
nnoremap gl :e %<CR>

" Remaps for navigating splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Remaps for resizing tabs
nnoremap = <C-w>>
nnoremap - <C-w><
nnoremap <leader>[ <C-w>-
nnoremap <leader>] <C-w>+

" Remaps for changing tabs
nnoremap + gt
nnoremap _ gT

" Remaps for fugitive
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gph :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>

" Remap for RipGrep
nnoremap <leader>rr :Rg<CR>

" Flutter
nnoremap <leader>dd :e output:///flutter-dev<CR>
nnoremap <leader>dc :CocCommand flutter.dev.clearDevLog <CR>
nnoremap <leader>ds :CocCommand flutter.devices <CR>
nnoremap <leader>dr :CocCommand flutter.run <CR>

" Remap for terminal normal mode
tnoremap <C-q> <C-\><C-n>

" coc maps
nnoremap <C-p> :FZF<CR>
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <leader>gp :CocRestart<CR>

" Opt + <
nnoremap ≤ :BufferMovePrevious<CR>
" Opt + <
nnoremap ≥ :BufferMoveNext<CR>

" barbar plugin maps
nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>
nnoremap <silent> <leader>9 :BufferGoto 9<CR>
nnoremap <silent> <leader>0 :BufferGoto 10<CR>
nnoremap <silent> <leader>l :BufferLast<CR>
nnoremap <silent> <leader>, :BufferMovePrevious<CR>
nnoremap <silent> <leader>. :BufferMoveNext<CR>
nnoremap <silent> <leader>P :BufferPin<CR>
nnoremap <silent> < :BufferPrevious<CR>
nnoremap <silent> > :BufferNext<CR>
nnoremap <silent> <leader>? :BufferClose<CR>

" nerdtree mappings
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap ø :NERDTreeFind<CR>

" Lorem generator
nnoremap <leader>l <Plug>Lorem

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'AndrewRadev/tagalong.vim' " Auto rename XML/HTML style tags
Plug 'BurntSushi/ripgrep' " Search code in files
Plug 'airblade/vim-gitgutter' " Git Sidebar
Plug 'ap/vim-css-color' " Css color highlight
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Preview markdown files in the browser
Plug 'jiangmiao/auto-pairs' " Auto brackets and XML/HTML tag pairs
Plug 'junegunn/fzf', {'do': { -> fzf#install() } } " Fuzzy search (engine?)
Plug 'junegunn/fzf.vim' " Fuzzy search
Plug 'kyazdani42/nvim-web-devicons' " Icons in the buffer bar
Plug 'machakann/vim-highlightedyank' " Highlight yanked text
Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP, autocomplete, bloat... Will replace at some point ¯\(◉◡◔)/¯
Plug 'preservim/nerdtree' " File explorer (mainly side bar)
Plug 'romgrk/barbar.nvim' " Better buffer bars
Plug 'tpope/vim-commentary' " Comment code
Plug 'tpope/vim-fugitive' " Git
Plug 'tpope/vim-speeddating' " Increment/decrement dates like numbers with <C-a> and <C-x>
Plug 'tpope/vim-surround' " Surround text with quotes, brackets, etc.
Plug 'vim-scripts/ReplaceWithRegister' " Replace text without overwriting default register
Plug 'mbpowers/lorem-nvim' " Lorem generator

" Themes
Plug 'romgrk/doom-one.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Languages and Frameworks
Plug 'dart-lang/dart-vim-plugin'
Plug 'evanleck/vim-svelte'
Plug 'pantharshit00/vim-prisma' " Syntax highlight for prisma files
Plug 'tpope/vim-markdown'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
call plug#end()

" coc prettier configs
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ----------------------------------------
" ---- COC configs start ----
" ----------------------------------------

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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use <C-p> for param hints
inoremap <C-p> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting file
nmap ł :Format<CR>

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
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

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
nnoremap ł :Format<CR>

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

let g:coc_global_extensions = [
    \'coc-json', 'coc-yank', 'coc-flutter', 
    \'coc-snippets', 'coc-prettier', 'coc-tsserver', 
    \'coc-eslint', 'coc-tailwindcss', 'coc-go', 'coc-rls',
    \'coc-emmet', 'coc-css', 'coc-rls', 'coc-prisma'
\]

" ----------------------------------------
" ---- COC configs end ----
" ----------------------------------------

if (has("termguicolors"))
  set termguicolors
endif

syntax enable

" ----------------------------------------
" ---- NERDTree config start ----
" ----------------------------------------

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos='right'

" ----------------------------------------
" ---- gruvbox-material config ----
" ----------------------------------------

" set background=dark
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_enable_bold = 1
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_diagnostic_line_highlight = 1
" let g:gruvbox_material_palette = 'mix'

" colorscheme gruvbox-material

" ----------------------------------------
" ---- doom-one config ----
" ----------------------------------------

colorscheme doom-one
let g:doom_one_terminal_colors = v:true

" ----------------------------------------
" ---- sonokai config ----
" ----------------------------------------

let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1

colorscheme sonokai
" ----------------------------------------
" ---- vim-code-dark config ----
" ----------------------------------------

colorscheme codedark

" ----------------------------------------
" ---- air-line config ----
" ----------------------------------------

" let g:airline_theme='gruvbox_material'
let g:airline_theme='codedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ----------------------------------------
" ---- vim-closetag config start ----
" ----------------------------------------

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" ----------------------------------------
" ---- vim-closetag config end ----
" ----------------------------------------

" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufRead * call SyncTree()

if exists('g:started_by_firenvim')
    set guifont=Jetbrains_Mono:h22
endif

" Tagalong
let g:tagalong_filetypes = ['eco', 'eelixir', 'ejs', 'eruby', 'html', 'htmldjango',
    \ 'javascriptreact', 'jsx', 'php', 'typescriptreact', 'xml', 'svelte']



" Firenvim
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }
