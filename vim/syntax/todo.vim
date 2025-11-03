
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
syntax cluster detail contains=todoPeople,todoContext

syn region todoDone start="^\z(\s*\)--\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!"  contains=@status fold
syn region todoNice start="^\z(\s*\)++\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail  fold
syn region todoAction start='^\z(\s*\)>>\s' end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail fold
syn region todoQuestion start="^\z(\s*\)??\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail fold
syn region todoBlock start="^\z(\s*\)!!\s"  end="^\(\(\z1\s\+\)\|\($\)\)\@!" contains=@status,@detail fold

syn match todoPeople '\(\s\|^\)@\S*' fold
syn match todoContext '\(\s\|^\)#\S*' fold

"syn match dSeperate '^\s*====.*$' contains=@detail fold

"======================================
" The default highlighting.
"
"hi def link dSpecialCharError    Error

hi def todoDone 	            guifg=Gray50

"hi def link dBlock 	        Error
hi def todoBlock 	            guifg=Red

"hi def link dQuestion        ModeMsg
hi def todoQuestion            guifg=goldenrod

"hi def dPromise             guifg=tomato1
"hi def dPromise             guifg=tomato1

"hi def link dNice 	        Debug
hi def todoNice 	            guifg=#2b2bf4
"hi def dNice 	            guifg=NavajoWhite3
"hi def dNice                guifg=#8C5B75

"hi def link dAction          NonText
hi def todoAction               guifg=CornflowerBlue

"hi def link dSeperate        NonText 
"hi def dSeperate             guifg=CornflowerBlue

"hi def dPeople               guifg=GreenYellow
hi def todoPeople              guifg=SeaGreen

hi def todoContext           guifg=magenta1
