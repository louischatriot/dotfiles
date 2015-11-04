sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install make
sudo apt-get -y install gcc
sudo apt-get -y install g++
sudo apt-get -y install build-essential checkinstall
sudo apt-get -y install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Python 2.7
cd ~
mkdir temp
cd temp
wget http://python.org/ftp/python/2.7.5/Python-2.7.5.tgz
tar -xvf Python-2.7.5.tgz
cd Python-2.7.5
./configure
make
sudo make install
rm -rf ~/temp/Python-2.7.5

# Git
sudo apt-get -y install git
git config --global user.name "Louis Chatriot"
git config --global user.email "louis.chatriot@gmail.com"
git config --global push.default "matching"

# Bash customization
echo "PS1='\[\033[33m\]\w\[\033[31m\]\$(__git_ps1)\[\033[37m\]\$ '" >> ~/.bashrc
echo 'export GIT_PS1_SHOWDIRTYSTATE=1' >> ~/.bashrc
echo 'ngrep() {' >> ~/.bashrc
echo '  grep -nr $1 *' >> ~/.bashrc
echo '}' >> ~/.bashrc
echo "alias gco='git add .; git commit -m '" >> ~/.bashrc


# Node
cd ~
mkdir temp
cd temp
git clone https://github.com/nodejs/node.git
git checkout v4.2.1
cd node
./configure
make
sudo make install
sudo npm install -g nodemon
rm -rf ~/temp/node

# Alternate Node installation for x64 Linux if low RAM prevents compiling
#cd ~/temp
#wget https://nodejs.org/dist/v4.2.2/node-v4.2.2-linux-x64.tar.gz
#tar -xvf node-v4.2.2-linux-x64.tar.gz
#cd node-v4.2.2-linux-x64
#cd bin
#mv * /usr/local/bin
#cd ../lib
#sudo mkdir /usr/local/lib
#mv * /usr/local/lib

# Misc
sudo apt-get -y install ruby
sudo apt-get -y install rake
sudo apt-get -y install ack-grep
sudo apt-get -y install exuberant-ctags

# Vim and gvim
sudo apt-get -y install vim
sudo apt-get -y install vim-gnome
curl -L https://bit.ly/janus-bootstrap | bash
echo 'color molokai' >> ~/.vimrc.after
echo 'let mapleader=","' >> ~/.vimrc.before
cd ~
mkdir .janus
cd .janus
git clone git@github.com:digitaltoad/vim-jade.git
mkdir -p ~/.janus/mysnippets/snippets
cd ~/.janus/mysnippets/snippets
touch ~/.janus/mysnippets/snippets/_.snippets
echo "snippet cl" > js.snippets
echo "console.log('')" >> js.snippets

# KeypassX
sudo apt-get -y install keepassx

# Skype
sudo apt-get -y install skype

# Redis
cd ~/temp
mkdir redis
cd redis
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
sudo make install

# Nginx
sudo aptt-get -y install nginx-full




