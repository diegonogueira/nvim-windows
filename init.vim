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
  Plug 'thinca/vim-visualstar'
  Plug 'svermeulen/vim-easyclip'
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

nmap <leader>e <Plug>(easymotion-s)
map <Leader>w <Plug>(easymotion-bd-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)

" =================================
" ========== Easy clip ============
" =================================

let g:EasyClipAutoFormat=1
let g:EasyClipPreserveCursorPositionAfterYank=1
let g:EasyClipUseCutDefaults = 0

nmap x <Plug>MoveMotionPlug
xmap x <Plug>MoveMotionXPlug
nmap xx <Plug>MoveMotionLinePlug
noremap X x

" =================================
" ====== Vim text object ==========

" =================================
xmap q iq
omap q iq

" ===========================
" ====== Text matchit =======
" ===========================

let g:textobj_matchit_no_default_key_mappings = 1

xmap ab  <Plug>(textobj-matchit-a)
omap ab  <Plug>(textobj-matchit-a)
xmap ib  <Plug>(textobj-matchit-i)
omap ib  <Plug>(textobj-matchit-i)

" ===================
" ====== Vim maps =======
" ===================

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

nnoremap <leader>o o<cr>
nnoremap <leader>O O<esc>O
nnoremap <leader>p o<esc>p
nnoremap <leader>P O<esc>P

nnoremap <silent> <Esc><Esc> :let @/=""<CR>

" ============================
" ==== VS Code keybinding ====
" ============================

nnoremap <silent> <leader>s :<C-u>call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <silent> <leader>q :<C-u>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

nnoremap <silent> <leader>vv :<C-u>call VSCodeNotify('multiCommand.panelFocus')<CR>
nnoremap <silent> <leader>vk :<C-u>call VSCodeNotify('multiCommand.panelMaximize')<CR>
nnoremap <silent> <leader>vj :<C-u>call VSCodeNotify('multiCommand.panelMaximize')<CR>
nnoremap <silent> <leader>n :<C-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

nnoremap <silent> <leader><tab> :<C-u>call VSCodeNotify('multiCommand.goToLastOpenedBuffer')<CR>
nnoremap <silent> <leader>f :<C-u>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <leader>b :<C-u>call VSCodeNotify('workbench.action.showAllEditors')<CR>
nnoremap <silent> <leader>r :<C-u>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')<CR>

xmap <leader>; <Plug>VSCodeCommentary
omap <leader>; <Plug>VSCodeCommentary
nmap <leader>; <Plug>VSCodeCommentaryLine

nnoremap <silent> <leader>gt :<C-u>call VSCodeNotify('altr.switchToNextFile')<CR>
nnoremap <silent> <leader>tb :<C-u>call VSCodeNotify('multiCommand.runBufferTest')<CR>
nnoremap <silent> <leader>tt :<C-u>call VSCodeNotify('multiCommand.runLineTest')<CR>
nnoremap <silent> <leader>tf :<C-u>call VSCodeNotify('multiCommand.runFolderTest')<CR>
nnoremap <silent> <leader>tp :<C-u>call VSCodeNotify('multiCommand.runProjectTest')<CR>
nnoremap <silent> <leader>tr :<C-u>call VSCodeNotify('extension.rerunLastCommand')<CR>