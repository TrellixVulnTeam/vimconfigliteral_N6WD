let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-C> 
inoremap <silent> <F3> :MaximizerToggle
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('notify', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('notify', 'snippets-expand', 1)
inoremap <silent> <expr> <BS> coc#_insert_key('request', 'iPGJzPg==0')
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <Plug>CocRefresh =coc#_complete()
imap <C-K> k
imap <C-H> h
imap <C-J> j
imap <C-L> l
inoremap <silent> <expr> <C-Space> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
nmap  <Plug>(SmoothieBackwards)
nmap  <Plug>(SmoothieDownwards)
nmap  <Plug>(SmoothieForwards)
nnoremap  h
nnoremap <silent> 	 :bnext
nnoremap <NL> j
vmap <NL> <Plug>(coc-snippets-select)
nnoremap  k
nnoremap  l
nmap  <Plug>(SmoothieUpwards)
map  f :Ranger
nnoremap <silent>  bd :Bclose
nmap  r :RnvimrToggle
vnoremap <silent>  / :call Comment()
vnoremap < <gv
vnoremap > >gv
xmap S <Plug>VSurround
omap af <Plug>(coc-funcobj-a)
xmap af <Plug>(coc-funcobj-a)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
omap if <Plug>(coc-funcobj-i)
xmap if <Plug>(coc-funcobj-i)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <F3> :MaximizerTogglegv
nnoremap <silent> <F3> :MaximizerToggle
nnoremap <silent> <Plug>VimspectorRunToCursor :call vimspector#RunToCursor()
nnoremap <silent> <Plug>VimspectorStepOut :call vimspector#StepOut()
nnoremap <silent> <Plug>VimspectorStepInto :call vimspector#StepInto()
nnoremap <silent> <Plug>VimspectorStepOver :call vimspector#StepOver()
nnoremap <silent> <Plug>VimspectorAddFunctionBreakpoint :call vimspector#AddFunctionBreakpoint( expand( '<cexpr>' ) )
nnoremap <silent> <Plug>VimspectorToggleConditionalBreakpoint :call vimspector#ToggleBreakpoint( { 'condition': input( 'Enter condition expression: ' ),   'hitCondition': input( 'Enter hit count expression: ' ) } )
nnoremap <silent> <Plug>VimspectorToggleBreakpoint :call vimspector#ToggleBreakpoint()
nnoremap <silent> <Plug>VimspectorPause :call vimspector#Pause()
nnoremap <silent> <Plug>VimspectorRestart :call vimspector#Restart()
nnoremap <silent> <Plug>VimspectorStop :call vimspector#Stop()
nnoremap <silent> <Plug>VimspectorContinue :call vimspector#Continue()
vnoremap <silent> <Plug>(coc-explorer-key-v->>) :call coc#rpc#request('doKeymap', ['explorer-key-v->>'])
nnoremap <silent> <Plug>(coc-explorer-key-n->>) :call coc#rpc#request('doKeymap', ['explorer-key-n->>'])
vnoremap <silent> <Plug>(coc-explorer-key-v-<<) :call coc#rpc#request('doKeymap', ['explorer-key-v-<<'])
nnoremap <silent> <Plug>(coc-explorer-key-n-<<) :call coc#rpc#request('doKeymap', ['explorer-key-n-<<'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]c) :call coc#rpc#request('doKeymap', ['explorer-key-v-]c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]c) :call coc#rpc#request('doKeymap', ['explorer-key-n-]c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[c) :call coc#rpc#request('doKeymap', ['explorer-key-v-[c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[c) :call coc#rpc#request('doKeymap', ['explorer-key-n-[c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]D) :call coc#rpc#request('doKeymap', ['explorer-key-v-]D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]D) :call coc#rpc#request('doKeymap', ['explorer-key-n-]D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[D) :call coc#rpc#request('doKeymap', ['explorer-key-v-[D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[D) :call coc#rpc#request('doKeymap', ['explorer-key-n-[D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]d) :call coc#rpc#request('doKeymap', ['explorer-key-v-]d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]d) :call coc#rpc#request('doKeymap', ['explorer-key-n-]d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[d) :call coc#rpc#request('doKeymap', ['explorer-key-v-[d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[d) :call coc#rpc#request('doKeymap', ['explorer-key-n-[d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]m) :call coc#rpc#request('doKeymap', ['explorer-key-v-]m'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]m) :call coc#rpc#request('doKeymap', ['explorer-key-n-]m'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[m) :call coc#rpc#request('doKeymap', ['explorer-key-v-[m'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[m) :call coc#rpc#request('doKeymap', ['explorer-key-n-[m'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]i) :call coc#rpc#request('doKeymap', ['explorer-key-v-]i'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]i) :call coc#rpc#request('doKeymap', ['explorer-key-n-]i'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[i) :call coc#rpc#request('doKeymap', ['explorer-key-v-[i'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[i) :call coc#rpc#request('doKeymap', ['explorer-key-n-[i'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]]) :call coc#rpc#request('doKeymap', ['explorer-key-v-]]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]]) :call coc#rpc#request('doKeymap', ['explorer-key-n-]]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[[) :call coc#rpc#request('doKeymap', ['explorer-key-v-[['])
nnoremap <silent> <Plug>(coc-explorer-key-n-[[) :call coc#rpc#request('doKeymap', ['explorer-key-n-[['])
vnoremap <silent> <Plug>(coc-explorer-key-v-gb) :call coc#rpc#request('doKeymap', ['explorer-key-v-gb'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gb) :call coc#rpc#request('doKeymap', ['explorer-key-n-gb'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gf) :call coc#rpc#request('doKeymap', ['explorer-key-v-gf'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gf) :call coc#rpc#request('doKeymap', ['explorer-key-n-gf'])
vnoremap <silent> <Plug>(coc-explorer-key-v-F) :call coc#rpc#request('doKeymap', ['explorer-key-v-F'])
nnoremap <silent> <Plug>(coc-explorer-key-n-F) :call coc#rpc#request('doKeymap', ['explorer-key-n-F'])
vnoremap <silent> <Plug>(coc-explorer-key-v-f) :call coc#rpc#request('doKeymap', ['explorer-key-v-f'])
nnoremap <silent> <Plug>(coc-explorer-key-n-f) :call coc#rpc#request('doKeymap', ['explorer-key-n-f'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gd) :call coc#rpc#request('doKeymap', ['explorer-key-v-gd'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gd) :call coc#rpc#request('doKeymap', ['explorer-key-n-gd'])
vnoremap <silent> <Plug>(coc-explorer-key-v-X) :call coc#rpc#request('doKeymap', ['explorer-key-v-X'])
nnoremap <silent> <Plug>(coc-explorer-key-n-X) :call coc#rpc#request('doKeymap', ['explorer-key-n-X'])
vnoremap <silent> <Plug>(coc-explorer-key-v-q) :call coc#rpc#request('doKeymap', ['explorer-key-v-q'])
nnoremap <silent> <Plug>(coc-explorer-key-n-q) :call coc#rpc#request('doKeymap', ['explorer-key-n-q'])
vnoremap <silent> <Plug>(coc-explorer-key-v-?) :call coc#rpc#request('doKeymap', ['explorer-key-v-?'])
nnoremap <silent> <Plug>(coc-explorer-key-n-?) :call coc#rpc#request('doKeymap', ['explorer-key-n-?'])
vnoremap <silent> <Plug>(coc-explorer-key-v-R) :call coc#rpc#request('doKeymap', ['explorer-key-v-R'])
nnoremap <silent> <Plug>(coc-explorer-key-n-R) :call coc#rpc#request('doKeymap', ['explorer-key-n-R'])
vnoremap <silent> <Plug>(coc-explorer-key-v-.) :call coc#rpc#request('doKeymap', ['explorer-key-v-.'])
nnoremap <silent> <Plug>(coc-explorer-key-n-.) :call coc#rpc#request('doKeymap', ['explorer-key-n-.'])
vnoremap <silent> <Plug>(coc-explorer-key-v-r) :call coc#rpc#request('doKeymap', ['explorer-key-v-r'])
nnoremap <silent> <Plug>(coc-explorer-key-n-r) :call coc#rpc#request('doKeymap', ['explorer-key-n-r'])
vnoremap <silent> <Plug>(coc-explorer-key-v-A) :call coc#rpc#request('doKeymap', ['explorer-key-v-A'])
nnoremap <silent> <Plug>(coc-explorer-key-n-A) :call coc#rpc#request('doKeymap', ['explorer-key-n-A'])
vnoremap <silent> <Plug>(coc-explorer-key-v-a) :call coc#rpc#request('doKeymap', ['explorer-key-v-a'])
nnoremap <silent> <Plug>(coc-explorer-key-n-a) :call coc#rpc#request('doKeymap', ['explorer-key-n-a'])
vnoremap <silent> <Plug>(coc-explorer-key-v-D) :call coc#rpc#request('doKeymap', ['explorer-key-v-D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-D) :call coc#rpc#request('doKeymap', ['explorer-key-n-D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-d) :call coc#rpc#request('doKeymap', ['explorer-key-v-d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-d) :call coc#rpc#request('doKeymap', ['explorer-key-n-d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-p) :call coc#rpc#request('doKeymap', ['explorer-key-v-p'])
nnoremap <silent> <Plug>(coc-explorer-key-n-p) :call coc#rpc#request('doKeymap', ['explorer-key-n-p'])
vnoremap <silent> <Plug>(coc-explorer-key-v-x) :call coc#rpc#request('doKeymap', ['explorer-key-v-x'])
nnoremap <silent> <Plug>(coc-explorer-key-n-x) :call coc#rpc#request('doKeymap', ['explorer-key-n-x'])
vnoremap <silent> <Plug>(coc-explorer-key-v-c) :call coc#rpc#request('doKeymap', ['explorer-key-v-c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-c) :call coc#rpc#request('doKeymap', ['explorer-key-n-c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-Y) :call coc#rpc#request('doKeymap', ['explorer-key-v-Y'])
nnoremap <silent> <Plug>(coc-explorer-key-n-Y) :call coc#rpc#request('doKeymap', ['explorer-key-n-Y'])
vnoremap <silent> <Plug>(coc-explorer-key-v-y) :call coc#rpc#request('doKeymap', ['explorer-key-v-y'])
nnoremap <silent> <Plug>(coc-explorer-key-n-y) :call coc#rpc#request('doKeymap', ['explorer-key-n-y'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gp) :call coc#rpc#request('doKeymap', ['explorer-key-v-gp'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gp) :call coc#rpc#request('doKeymap', ['explorer-key-n-gp'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gs) :call coc#rpc#request('doKeymap', ['explorer-key-v-gs'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gs) :call coc#rpc#request('doKeymap', ['explorer-key-n-gs'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[bs]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[bs]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[bs]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[bs]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-t) :call coc#rpc#request('doKeymap', ['explorer-key-v-t'])
nnoremap <silent> <Plug>(coc-explorer-key-n-t) :call coc#rpc#request('doKeymap', ['explorer-key-n-t'])
vnoremap <silent> <Plug>(coc-explorer-key-v-E) :call coc#rpc#request('doKeymap', ['explorer-key-v-E'])
nnoremap <silent> <Plug>(coc-explorer-key-n-E) :call coc#rpc#request('doKeymap', ['explorer-key-n-E'])
vnoremap <silent> <Plug>(coc-explorer-key-v-s) :call coc#rpc#request('doKeymap', ['explorer-key-v-s'])
nnoremap <silent> <Plug>(coc-explorer-key-n-s) :call coc#rpc#request('doKeymap', ['explorer-key-n-s'])
vnoremap <silent> <Plug>(coc-explorer-key-v-e) :call coc#rpc#request('doKeymap', ['explorer-key-v-e'])
nnoremap <silent> <Plug>(coc-explorer-key-n-e) :call coc#rpc#request('doKeymap', ['explorer-key-n-e'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[cr]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[cr]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-o) :call coc#rpc#request('doKeymap', ['explorer-key-n-o'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[2-LeftMouse]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[2-LeftMouse]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gh) :call coc#rpc#request('doKeymap', ['explorer-key-v-gh'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gh) :call coc#rpc#request('doKeymap', ['explorer-key-n-gh'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gl) :call coc#rpc#request('doKeymap', ['explorer-key-v-gl'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gl) :call coc#rpc#request('doKeymap', ['explorer-key-n-gl'])
vnoremap <silent> <Plug>(coc-explorer-key-v-K) :call coc#rpc#request('doKeymap', ['explorer-key-v-K'])
nnoremap <silent> <Plug>(coc-explorer-key-n-K) :call coc#rpc#request('doKeymap', ['explorer-key-n-K'])
vnoremap <silent> <Plug>(coc-explorer-key-v-J) :call coc#rpc#request('doKeymap', ['explorer-key-v-J'])
nnoremap <silent> <Plug>(coc-explorer-key-n-J) :call coc#rpc#request('doKeymap', ['explorer-key-n-J'])
vnoremap <silent> <Plug>(coc-explorer-key-v-l) :call coc#rpc#request('doKeymap', ['explorer-key-v-l'])
nnoremap <silent> <Plug>(coc-explorer-key-n-l) :call coc#rpc#request('doKeymap', ['explorer-key-n-l'])
vnoremap <silent> <Plug>(coc-explorer-key-v-h) :call coc#rpc#request('doKeymap', ['explorer-key-v-h'])
nnoremap <silent> <Plug>(coc-explorer-key-n-h) :call coc#rpc#request('doKeymap', ['explorer-key-n-h'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gj) :call coc#rpc#request('doKeymap', ['explorer-key-v-gj'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gj) :call coc#rpc#request('doKeymap', ['explorer-key-n-gj'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gk) :call coc#rpc#request('doKeymap', ['explorer-key-v-gk'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gk) :call coc#rpc#request('doKeymap', ['explorer-key-n-gk'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[tab]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[tab]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[tab]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[tab]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-*) :call coc#rpc#request('doKeymap', ['explorer-key-v-*'])
nnoremap <silent> <Plug>(coc-explorer-key-n-*) :call coc#rpc#request('doKeymap', ['explorer-key-n-*'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
xnoremap <silent> <Plug>(coc-convert-snippet) :call coc#rpc#notify('doKeymap', ['convert-snippet'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nmap <PageUp> <Plug>(SmoothieBackwards)
nmap <S-Up> <Plug>(SmoothieBackwards)
nmap <C-B> <Plug>(SmoothieBackwards)
nmap <PageDown> <Plug>(SmoothieForwards)
nmap <S-Down> <Plug>(SmoothieForwards)
nmap <C-F> <Plug>(SmoothieForwards)
nmap <C-U> <Plug>(SmoothieUpwards)
nmap <C-D> <Plug>(SmoothieDownwards)
nnoremap <silent> <Plug>(Smoothie_G) :call smoothie#cursor_movement('G')  
nnoremap <silent> <Plug>(Smoothie_gg) :call smoothie#cursor_movement('gg') 
nnoremap <silent> <Plug>(SmoothieBackwards) :call smoothie#backwards() 
nnoremap <silent> <Plug>(SmoothieForwards) :call smoothie#forwards()  
nnoremap <silent> <Plug>(SmoothieUpwards) :call smoothie#upwards()   
nnoremap <silent> <Plug>(SmoothieDownwards) :call smoothie#downwards() 
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <silent> <Plug>(Tman) :call man#get_page_from_cword('tab',        v:count)
nnoremap <silent> <Plug>(Vman) :call man#get_page_from_cword('vertical',   v:count)
nnoremap <silent> <Plug>(Sman) :call man#get_page_from_cword('horizontal', v:count)
nnoremap <silent> <Plug>(Man) :call man#get_page_from_cword('horizontal', v:count)
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
onoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Method', 'Function']])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Method', 'Function']])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-cursor) :call       CocActionAsync('codeAction',         'cursor')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction',         'line')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
nnoremap <silent> <S-Tab> :bprevious
nnoremap <C-L> l
nnoremap <C-K> k
nnoremap <C-J> j
nnoremap <C-H> h
vmap <C-J> <Plug>(coc-snippets-select)
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  h
imap <NL> j
imap  k
imap  l
inoremap <expr>  complete_info()["selected"] != "-1" ? "\" : "\u\"
imap  <Plug>Isurround
inoremap <silent> <expr> " coc#_insert_key('request', 'iIg==0')
inoremap <silent> <expr> ' coc#_insert_key('request', 'iJw==0')
inoremap <silent> <expr> ( coc#_insert_key('request', 'iKA==0')
inoremap <silent> <expr> ) coc#_insert_key('request', 'iKQ==0')
inoremap <silent> <expr> < coc#_insert_key('request', 'iPA==0')
inoremap <silent> <expr> > coc#_insert_key('request', 'iPg==0')
inoremap <silent> <expr> [ coc#_insert_key('request', 'iWw==0')
inoremap <silent> <expr> ] coc#_insert_key('request', 'iXQ==0')
inoremap <silent> <expr> ` coc#_insert_key('request', 'iYA==0')
inoremap <silent> <expr> { coc#_insert_key('request', 'iew==0')
inoremap <silent> <expr> } coc#_insert_key('request', 'ifQ==0')
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set clipboard=unnamedplus
set directory=~/.vim/swap_files//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set incsearch
set laststatus=2
set runtimepath=~/.vim,~/.vim/plugged/gruvbox,~/.vim/plugged/vim-ripgrep,~/.vim/plugged/vim-fugitive,~/.vim/plugged/undotree,~/.vim/plugged/vim-commentary,~/.vim/plugged/vim-surround,~/.vim/plugged/vim-which-key,~/.vim/plugged/rainbow,~/.vim/plugged/vim-smoothie,~/.vim/plugged/vim-highlightedyank,~/.vim/plugged/vim-rooter,~/.vim/plugged/vim-airline,~/.vim/plugged/bclose.vim,~/.vim/plugged/vimspector,~/.vim/plugged/vim-maximizer,~/.vim/plugged/jedi-vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim82,/usr/local/share/vim/vimfiles/after,~/.config/coc/extensions/node_modules/coc-explorer,~/.config/coc/extensions/node_modules/coc-snippets,~/.vim/plugged/jedi-vim/after,~/.vim/after
set shiftwidth=4
set noshowmode
set showtabline=2
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set statusline=%{coc#status()}%{get(b:,'coc_current_function','')}
set tabstop=4
set undodir=~/.vim/undodir
set undofile
set wildignore=*.pyc
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd .vimrc
edit .config/nvim/init.vim
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=100
setlocal colorcolumn=80
setlocal comments=sO:\"\ -,mO:\"\ \ ,sO:#\ -,mO:#\ \ ,eO:##,:\",b:#
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,=end,=},=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 50 - ((21 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 0
tabnext 1
badd +41 .vimrc
badd +50 .config/nvim/init.vim
badd +3 ~/work/algorithms/codility.py
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
