# NeoVim-Config

-> 1.1 Installation of needed Packages:

  Depending on which operating system you are using you have different methods to install Neovim.
  Here you can see all of them: https://github.com/neovim/neovim/blob/master/INSTALL.md

  For me it was:

    sudo pacman -S neovim

  VIM-PLUG:

  Our Plugin Manager which we use to install the Plugins 
  (check out the repository!: https://github.com/junegunn/vim-plug?tab=readme-ov-file):

    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


-> 1.2 Setting everything up:

  Firstly you have to navigate to the .config directory to see your directories (the hided included) you type 
  ls -a you should see a .config directory. Navigate into it using cd and create a directory called nvim (with mkdir == make directory).
  After you did this you may clone this repository into your nvim directory.

-> 1.3 Installing the Plugins:

  Open NeoVim using the nvim command. Go into command mode (ESC) and type:

    :PlugInstall

  You should get a screen installing your Plugins. Let them finish downloading. As soon as they're done downloading,
  You have your Nvim Editor perfect for Web-Development thanks to the auto-completion.
