sudo apt-get install git
sudo apt-get install vim
sudo apt-get install rxvt-unicode
sudo apt-get install zsh
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt # change default terminal to urxvt
chsh -s $(which zsh) # Change default shell to zsh. Only applies once desktop env is restarted.


# Intray
wget -qO- https://get.haskellstack.org/ | sh
stack install autoexporter
git clone https://github.com/NorfairKing/intray.git --recursive
cd intray
stack install :intray
cd ..
rm -rf intray

git clone https://github.com/NorfairKing/super-user-spark.git --recursive
cd super-user-spark
stack install
cd ..
rm -rf super-user-spark


