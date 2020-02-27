" ============================
" =========== basic ==========
" ============================

if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

" ============================
" ====== plugin manager ======
" ============================

call plug#begin('~/.vim/plugged')
  Plug 'bkad/CamelCaseMotion'
  Plug 'asvetliakov/vim-easymotion'
  Plug 'thinca/vim-visualstar'
  Plug 'sheerun/vim-polyglot'
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-indent'
  Plug 'sgur/vim-textobj-parameter'
  Plug 'vim-scripts/matchit.zip'
  Plug 'adriaanzon/vim-textobj-matchit'
  Plug 'beloglazov/vim-textobj-quotes'
  Plug 'Julian/vim-textobj-brace'
call plug#end()

" =================================
" ===== Camel case motion ========
" =================================

map <silent> w <Plug>CamelCaseMotion_e
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_w
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

omap <silent> iw <Plug>CamelCaseMotion_ie
xmap <silent> iw <Plug>CamelCaseMotion_ie
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_iw
xmap <silent> ie <Plug>CamelCaseMotion_iw

onoremap <silent> io iw
xnoremap <silent> io iw

" =================================
" ======== Easy motion ============
" =================================

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

nmap <C-c>es <Plug>(easymotion-s)
map <C-c>ew <Plug>(easymotion-bd-w)
map <C-c>ej <Plug>(easymotion-j)
map <C-c>ek <Plug>(easymotion-k)
map <C-c>e/ <Plug>(easymotion-sn)
omap <C-c>e/ <Plug>(easymotion-tn)

" =================================
" ====== Vim text object ==========
" =================================

xmap q iq
omap q iq

" =================================
" ====== Text matchit =======
" ===========================

let g:textobj_matchit_no_default_key_mappings = 1

xmap ab <Plug>(textobj-matchit-a)
omap ab <Plug>(textobj-matchit-a)
xmap ib <Plug>(textobj-matchit-i)
omap ib <Plug>(textobj-matchit-i)

" =================================
" ========== Vim maps =============
" =================================

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

nnoremap <leader>o o<cr>
nnoremap <leader>O O<esc>O
nnoremap <leader>p o<esc>p
nnoremap <leader>P O<esc>P

nnoremap <silent> <Esc><Esc> :let @/=""<CR>