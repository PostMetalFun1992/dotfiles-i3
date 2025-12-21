function bkp --description "Backup native and AUR packages"
    echo "📦 Backing up Native packages (Pacman)..."
    pacman -Qnqe >~/dotfiles/pkglist.txt

    echo "👾 Backing up AUR packages (Yay)..."
    pacman -Qmq >~/dotfiles/aurlist.txt

    echo "📂 Git status:"
    cd ~/dotfiles
    git status
end
