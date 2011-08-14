set nocompatible

" Infect vim with pathogen goodness!
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
set number
set ruler
syntax on

" Default color scheme
color ir_black

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Show (partial) command in the status line
set showcmd

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list listchars=tab:\ \ ,trail:·
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/,CVS*

" Status bar
set laststatus=2

" Code folding
set foldmethod=indent
set foldnestmax=3
set foldlevel=0
set nofoldenable

if has("autocmd")
  " Remember last location in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif

  " Drupal *.module and *.install files.
  autocmd BufRead,BufNewFile *.{module,install,test,inc} set filetype=php.drupal.html
  " Markdown
  autocmd BufRead,BufNewFile *.{md,mkd,markdown} set filetype=markdown
  " Ruby
  autocmd BufRead,BufNewFile {Rakefile,Capfile,Gemfile} set filetype=ruby
endif

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1
