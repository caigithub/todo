## introduction

- use plain text.
use plain text to describe the task. add meaningful syntax to indidate the status of the task.
so you can use any editor to modify.

- use syntax highlight
use editor's syntax highlight to provide color.
you will get a visual feedback immediatley, no editor/viewer needed.

- screenshot
  
## use it in vim
### install
download repo
copy ./vim/* to <vimfiles>/*
### customization
modify the <vimfiles>/syntax/todo.vim
hi def todoDone 	            guifg=Gray50
hi def todoBlock 	            guifg=Red
hi def todoQuestion           guifg=goldenrod
hi def todoNice 	            guifg=#2b2bf4
hi def todoAction             guifg=CornflowerBlue
hi def todoAt                 guifg=SeaGreen
hi def todoLabel              guifg=magenta1
## use it in vscode 
### install
search colinkaopu d to install the plugin
### customize

    "editor.tokenColorCustomizations": {
        "textMateRules": [
              

        ]
    },
