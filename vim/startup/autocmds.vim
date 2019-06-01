" Folds
au BufWinLeave * silent mkview
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * silent! mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" Markdown, txt, LaTeX
au BufReadPost,BufNewFile *.md,*.tex call functions#spell() |  Goyo 125

" load buffer with possible vim/zsh files to edit
if isdirectory($HOME . "/i3wm")
  au BufReadPost,BufNewFile *.zshrc,zshrc call functions#openwithbuffer("~/i3wm/zsh/*.zsh")
  au BufReadPost,BufNewFile *.vimrc,vimrc call functions#openwithbuffer("~/i3wm/vim/startup/*.vim")
endif

" Enter and Leave Goyo
autocmd! User GoyoEnter call goyo#goyo_enter()
autocmd! User GoyoLeave call goyo#goyo_leave()

" delete whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" remove new line auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType netrw setl bufhidden=wipe

" close nerdtree if last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Override Default fzf statusline
autocmd! User FzfStatusLine call fzf#fzf_statusline()

" Remove highlighting on insert mode
autocmd InsertEnter * :let @/=""
