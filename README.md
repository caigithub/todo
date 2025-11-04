## introduction
use plain text to mark the task status
## overview
- plan text
  - use plain text to describe the task.
  - add meaningful syntax to indidate the status of the task.
  - you can use any editor to modify.
- syntax highlight
  - use editor's syntax highlight to provide color.
  - you will get a visual feedback immediatley, no editor/viewer needed.
## feature
- begin a line with follow syntax :
```
    --<space>
        it will highlight the current block as done-style
    !!<space>
        it will highlight the current block as block-style
    ??<space>
        it will highlight the current block as question-style
    >><space>
        it will highlight the current line as action-style
    ++<space>
        it will highlight the current block as nice-to-have-style
```
- screenshot
<img width="828" height="705" alt="image" src="https://github.com/user-attachments/assets/f27e6364-7d6a-48a8-a782-66c9693ebb0e" />

## use it in vscode 
### install
- search colinkaopu d to install the plugin
### customize style
- in the settings.json, add following sections
```
    "editor.tokenColorCustomizations": {
        "textMateRules": [
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
## use it in vim
### install
- download repo
- copy \<repo\>/vim/* to \<your_vimfiles\>/*
### customize style
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
