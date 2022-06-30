#scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop bucket add extras; scoop bucket add versions;

scoop install 7zip git fd ripgrep zig gcc nvm gh draw.io obsidian omnisharp oh-my-posh pandoc;

Install-Module posh-git;
Install-Module PSReadLine -Scope CurrentUser;
Install-Module Terminal-Icons -Scope CurrentUser


# vim
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force

cd ~; mkdir AppData\Local\nvim;
cp .\init.vim ~\AppData\Local\nvim\
