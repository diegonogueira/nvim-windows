" ============================
" =========== basic ==========
" ============================

nnoremap <space> <Nop>
map <space> <leader>

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
  " Plug 'thinca/vim-visualstar'
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

nmap <leader>e <Plug>(easymotion-s)
map <Leader>w <Plug>(easymotion-bd-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)

" =================================
" ==== vim-textobj-quotes =========
" =================================

xmap q iq
omap q iq


" =================================
" ======== Text matchit ===========
" =================================

let g:textobj_matchit_no_default_key_mappings = 1

xmap ab <Plug>(textobj-matchit-a)
omap ab <Plug>(textobj-matchit-a)
xmap ib <Plug>(textobj-matchit-i)
omap ib <Plug>(textobj-matchit-i)

" =================================
" ======== Commentary =============
" =================================

xmap <leader>; <Plug>VSCodeCommentary
nmap <leader>; <Plug>VSCodeCommentary
" omap <leader>; <Plug>VSCodeCommentary
nmap <leader>; <Plug>VSCodeCommentaryLine

" =================================
" ========== Vim maps =============
" =================================

nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>o o<cr>
nnoremap <leader>O O<esc>O
nnoremap <leader>p o<esc>p
nnoremap <leader>P O<esc>P

nnoremap <silent> <Esc><Esc> :let @/=""<CR>

" =================================
" ========== Vim visualstar =============
" =================================

" map * <Plug>(visualstar-*)zz
" map g* <Plug>(visualstar-g*)zz
" map # <Plug>(visualstar-#)zz
" vmap <leader>gc g*``cgn
" vmap <leader>gd g*``dgn