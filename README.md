## introduction
***.todo** is a **plain text** format that uses **self-defined symbols** to indicate **task status**.  
You can edit it with any text editor, and **syntax highlighting** provides instant visual feedback. 

PS: The previous extensions ***.d** and ***.td** no longer supported.  
To migrate, simply **rename** your files to ***.todo** extension.

![screenshot](https://raw.githubusercontent.com/caigithub/todo/refs/heads/main/vscode_plugin/screenshot.png)
## usage
- begin a line with follow syntax :
```
    --<space>
        it will highlight the **block** as done-style
    !!<space>
        it will highlight the **block** as block-style
    ??<space>
        it will highlight the **block** as question-style
    >><space>
        it will highlight the **line** as action-style
    ++<space>
        it will highlight the **block** as nice-to-have-style
```
## support in vscode 
- install the plugin : https://marketplace.visualstudio.com/items?itemName=colinkaopu.d
- vscode plugin support : https://github.com/caigithub/todo/tree/main/vscode_plugin
## support in vim
- vim support : https://github.com/caigithub/todo/tree/main/vim
