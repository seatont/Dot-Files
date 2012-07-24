set fileencodings=utf-8
set sw=2
set ts=2
set expandtab
set smarttab
set shiftround
set ai
set nu
set tw=120
set wrap
"set background=light
set wildmode=longest,list
":helptags /etc/vimdoc
set noswapfile
set hlsearch
syntax on

" stuff I want indented by 2 spaces
au BufNewFile,BufRead *.rb set sw=2
au BufNewFile,BufRead *.rb set ts=2
au BufNewFile,BufRead *.haml set sw=2
au BufNewFile,BufRead *.haml set ts=2
au BufNewFile,BufRead *.haml set tw=0 " haml shouldn't autowrap
au BufNewFile,BufRead *.sass set sw=2
au BufNewFile,BufRead *.sass set ts=2
au BufNewFile,BufRead *.yml set sw=2
au BufNewFile,BufRead *.yml set ts=2

" stuff I want indented by 4 spaces
au BufNewFile,BufRead *.txt set sw=4
au BufNewFile,BufRead *.txt set ts=4
au BufNewFile,BufRead *.php set sw=4
au BufNewFile,BufRead *.php set ts=4

" Add commenting - via Mike Judge
au FileType haskell,vhdl,ada            let b:comment_leader = '-- '
au FileType vim                         let b:comment_leader = '" '
au FileType c,cpp,java,javascript       let b:comment_leader = '// '
au FileType sh,make,ruby,perl           let b:comment_leader = '# '
au FileType tex                         let b:comment_leader = '% '
au FileType php                         let b:comment_leader = '//'

noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR> 
" End commenting

