#!/usr/bin/env bash

# |------~------~------~------~------~------~------~------------~------~------~------~------|
# |:         _ _ _  ___  _     ___  _____                                                  :|
# |:        | | (_)/ _ \| |   /   ||____ |    -- Soumyadeep ${elli0t43}                    :|
# |:     ___| | |_| |/| | |_ / /| |    / /    -> https://github.com/elli0t43               :|
# |:    / _ \ | | | |/| | __/ /_| |    \ \    -> https://dev.to/elli0t43                   :|
# |:   |  __/ | | \ |_| / |_\___  |.___/ /    -> https://myanimelist.net/profile/elli0t43  :|
# |:    \___|_|_|_|\___/ \__|   |_/\____/     -> https://instagram.com/elli0t43            :|
# |:                                                                                       :|
# |:       -- "I'll rather listen to your story, than attending your furenral" --          :|
# |------~------~------~------~------~------~------~------------~------~------~------~------|

if [ "$(id -u)" = 0 ]; then
    echo "|------~------~------~------~------~------~------~------------|"
    echo "|        Its not recommend to run this script as root.        |"
    echo "|   also stay near your PC, you will be asked to enter your   |"
    echo "|                     sudo password.                          |"
    echo "|------~------~------~------~------~------~------~------------|"
    exit 1
fi



error() { \
    clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}

echo "Welcome!" && sleep 2

echo "|------~------~------~------~------~------~------~------------|"
echo "|         Installing Vim and Neovim if not installed          |"
echo "|------~------~------~------~------~------~------~------------|"
sudo pacman --noconfirm --needed -Sy vim neovim || error "Error syncing the repos."

echo "|------~------~------~------~------~------~------~------------|"
echo "|        Installing Vim-Plug as a neovim plugin manager       |"
echo "|------~------~------~------~------~------~------~------------|"
nvimFolder="$HOME/.config/nvim"

if [ -d "$nvimFolder" ];
then
    echo  "$nvimFolder exist.. Aborting directory creation"
else
    echo "$nvimFolder doesn't exist... Creating one.."
    mkdir $HOME/.config/nvim
fi


sleep 4
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sleep 2

echo "|------~------~------~------~------~------~------~------------|"
echo "|                 Adding nvim plugin configs                  |"
echo "|------~------~------~------~------~------~------~------------|"
nvimConfigFile="$HOME/.config/nvim/init.vim"

if [ -f "$nvimConfigFile" ];
then
    echo "init.vim found... Replacting with my config"
    echo "backup of the old init.vim and nvim can be found in $HOME/.config/backup-neovim"
    
    if [ -d "$HOME/.config/backup-neovim" ];
    then
        echo "backup-neovim directory already exists."
    else
        mkdir $HOME/.config/backup-neovim
    fi
    cp -r $HOME/.config/nvim/ $HOME/.config/backup-neovim
    echo "Copying init.vim"
    cp init.vim $HOME/.config/nvim/init.vim
    cp -r neovim-plugs-confs/ $HOME/.config/nvim/
    echo "init.vim created.. can be found in $HOME/.config/nvim/"
    
else
    echo "init.vim not found... Creating one with my config.."
    cp init.vim $HOME/.config/nvim/init.vim
    cp -r neovim-plugs-confs/ $HOME/.config/nvim/
    echo "init.vim created.. can be found in $HOME/.config/nvim/"
    
    
fi

echo "Configs added successfully..."

echo "|------~------~------~------~------~------~------~------------|"
echo "| Configs have been added,kindly open a terminal and run nvim |"
echo "|   and run :PlugInstall to install all the plugins properly  |"
echo "|------~------~------~------~------~------~------~------------|"
exit 1
