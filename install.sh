sudo pacman -S --needed --noconfirm - <./arch-official-packages.txt

mv ./exclude-config.sh ./config.sh

sudo mkdir -p $HOME/.config/nvim
sudo cp -r ./lazyvim.json $HOME/.config/nvim/
sudo cp -r ./lazy-lock.json $HOME/.config/nvim/
sudo cp -r ./init.lua $HOME/.config/nvim/
sudo cp -r ./lua $HOME/.config/nvim/
