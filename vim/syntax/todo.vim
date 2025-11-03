
" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

"syn match dDone '^\s*-- .*$'  fold
"syn region dDone start='^\s*-- '  end='^s*'  fold

"===========================
"regex tutorial
"   \z(), \z1
"       :help :syn-ext-match
"
"   @!
"       inversely match
"       cat (dog)@!
"       This matches instances of cat (and a trailing space) not followed by dog.
"
"       start="
"               ^
"               \z(
"                   \s*
"               \)
"               .*
"               \s
"               @
"               \S
"           "
"
"       end="
"               ^
"               \(
"                   \(
"                       \z1
"                       \s\+
"                   \)
"                   \|
"                   \(
"                       $
"                   \)
"               \)
"               \@!
"           "
"
"syn region dDone start="^\z(\s*\)--\s"  end="^\(\z1\s\+\)\@!"  contains=dQuestion,dBlock,dNice,dAction fold
"
syntax cluster status contains=todoDone,todoAction,todoQuestion,todoBlock,todoNice
syntax cluster detail contains=todoAt,todoLabel

syn region todoDone start="^\z(\s*\)--\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!"  contains=@status fold
syn region todoNice start="^\z(\s*\)++\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail  fold
syn region todoAction start='^\z(\s*\)>>\s' end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail fold
syn region todoQuestion start="^\z(\s*\)??\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail fold
syn region todoBlock start="^\z(\s*\)!!\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail fold

syn match todoAt '\(\s\|^\)@\S*' fold
syn match todoLabel '\(\s\|^\)#\S*' fold

"syn match dSeperate '^\s*====.*$' contains=@detail fold

"======================================
" The default highlighting.
"
hi def todoDone 	            guifg=Gray50
hi def todoBlock 	            guifg=Red
hi def todoQuestion             guifg=goldenrod
hi def todoNice 	            guifg=#2b2bf4
hi def todoAction               guifg=CornflowerBlue
hi def todoAt                   guifg=SeaGreen
hi def todoLabel                guifg=magenta1
