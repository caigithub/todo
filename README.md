## introduction
- plan text !!
  use plain text to describe the task.
  add meaningful syntax to indidate the status of the task.
  you can use any editor to modify.
- syntax highlight !!
  use editor's syntax highlight to provide color.
  you will get a visual feedback immediatley, no editor/viewer needed.
- screenshot
  
## use it in vim
### install
- download repo
- copy ./vim/* to \<your_vimfiles\>/*
### customization
- modify the \<your_vimfiles\>/syntax/todo.vim
```
hi def todoDone               guifg=Gray50
hi def todoBlock              guifg=Red
hi def todoQuestion           guifg=goldenrod
hi def todoNice               guifg=#2b2bf4
hi def todoAction             guifg=CornflowerBlue
hi def todoAt                 guifg=SeaGreen
hi def todoLabel              guifg=magenta1
```
## use it in vscode 
### install
- search colinkaopu d to install the plugin
### customize
- in the settings.json
```
    "editor.tokenColorCustomizations": {
        "textMateRules": [
            //==========================
            // todo.d
            //
            {
                "scope": "todo.done",
                "settings": {
                    "foreground": "#FF0000"
                }
            },
            {
                "scope": "todo.question",
                "settings": {
                    "foreground": "#FF0000"
                }
            },
            {
                "scope": "todo.action",
                "settings": {
                    "foreground": "#FF0000"
                }
            },
            {
                "scope": "todo.nice",
                "settings": {
                    "foreground": "#FF0000"
                }
            },
            {
                "scope": "todo.at",
                "settings": {
                    "foreground": "#FF0000"
                }
            },
            {
                "scope": "todo.label",
                "settings": {
                    "foreground": "#FF0000"
                }
            }
        ]
    },
```
