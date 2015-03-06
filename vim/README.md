# vimrc

## steps

1. link dot.vimrc to ~/.vimrc

1. create directory ~/.vim

    ```
> mkdir -p ~/.vim/bundle
    ```

1. get Vundle

    ```
> git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```

1. install other plugins

    Launch `vim` and run `:PluginInstall`

    or from command line

    ```
> vim +PluginInstall +qall
    ```

