sudo apt-get install curl
curl -L https://nixos.org/nix/install | sh


sudo apt-get install git
sudo apt-get install vim
sudo apt-get install rxvt-unicode
sudo apt-get install zsh
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt # change default terminal to urxvt
chsh -s $(which zsh) # Change default shell to zsh. Only applies once desktop env is restarted.


# Intray
wget -qO- https://get.haskellstack.org/ | sh
git clone https://github.com/NorfairKing/intray.git --recursive
cd intray
nix-env --install --file nix/pkgs.nix --attr intrayPackages.intray-cli
cd ..
rm -rf intray
intray login


# Install SUS
git clone https://github.com/NorfairKing/super-user-spark.git --recursive
cd super-user-spark
stack install
cd ..
rm -rf super-user-spark


# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


# Sus-depot deployment
mkdir -p ~/ref
git clone git@github.com:CSVdB/sus-depot.git ~/ref/sus-depot
sudo ln -s ~/ref/sus-depot/shared/habits/hosts /etc/hosts
export KEYBOARD="QWERTY"
~/.local/bin/super-user-spark deploy ~/ref/sus-depot/spark.sus --replace-all



