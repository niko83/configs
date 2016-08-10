" Fast scrool
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Session UI
nnoremap <Leader>ss :SSave<CR>
nnoremap <Leader>sr :Unite session<CR>
nnoremap <Leader>sl :SLoad last.vim<CR>

let g:pymode_lint_ignore = "E501,C0110,C0111,W191,W0312,E711,E126,W0403,E126,D101,D102,D103,D100,D205,D400,D202"
let g:pymode_lint_checker = "pylint,pep8,pyflakes,mccabe"

let NERDTreeIgnore=['\~$', '\.AppleDouble$', '\.beam$',
\'dist$', '\.DS_Store$', '\.egg$', '\.egg-info$', '\.la$',
\'\.lo$', '\.\~lock.*#$', '\.mo$', '\.o$', '\.pt.cache$',
\'\.pyc$', '\.pyo$', '__pycache__$', '\.Python$', '\..*.rej$',
\'\.rej$', '\.ropeproject$', '\.svn$', '\.tags$' ]


au BufNewFile,BufRead *.py setl colorcolumn=80,99

set tpm=100

" let g:pymode_python = 'python3'