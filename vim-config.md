
Ctrl+ s保存

ctrl+ d保存并退出，

ctrl+ q退出放弃更改。

1. 新建 〜/ .bashrc

```
bind -r '\C-s'
stty -ixon
```

2. 新建 〜/ .vimrc中
 
```
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
```
