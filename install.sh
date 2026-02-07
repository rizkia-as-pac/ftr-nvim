sudo pacman -S --needed --noconfirm - <./arch-official-packages.txt

mv ./exclude-config.sh ./config.sh

mkdir -p $HOME/.config/nvim
cp -r ./lazyvim.json $HOME/.config/nvim/
cp -r ./lazy-lock.json $HOME/.config/nvim/
cp -r ./init.lua $HOME/.config/nvim/
cp -r ./lua $HOME/.config/nvim/
