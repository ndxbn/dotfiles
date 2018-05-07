#!/bin/bash
set -eu

LOCAL_PREFIX=~/.local

# install via yum
sudo yum -y install \
  libevent-devel \
  ncursis-devel \
  bc \
  curl \
  wget

# installation
#   in /tmp if forget to remove some thing
cd /tmp

## install zsh latest
wget https://sourceforge.net/projects/zsh/files/zsh/5.5.1/zsh-5.5.1.tar.gz/download -O zsh.tar.gz
tar xf zsh.tar.gz
cd zsh-5.5.1
./configure --prefix=$LOCAL_PREFIX
make -j4 && make install
cd ..
rm -rf zsh.tar.gz zsh-5.5.1

## install tmux master
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
less autogen.sh
./configure --prefix=$LOCAL_PREFIX
make -j4 && make install
cd ..
rm -rf tmux

## install GNU stow
wget http://ftp.gnu.org/gnu/stow/stow-2.2.2.tar.gz
tar xf stow-2.2.2.tar.gz
cd stow-2.2.2
./configure --prefix=$LOCAL_PREFIX
make
make install
cd ..
rm -rf stow-2.2.2 stow-2.2.2.tar.gz

## install jq latest
wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-1.5.tar.gz
tar xf jq-1.5.tar.gz
cd jq-1.5/
./configure --prefix=$LOCAL_PREFIX
make -j4
make install
cd ..
rm -rf jq-1.5 jq-1.5.tar.gz

## install hub command
wget https://github.com/github/hub/releases/download/v2.2.9/hub-linux-amd64-2.2.9.tgz -O hub.tgz
tar xf hub.tgz
cd hub-linux-amd64-2.2.9/
prefix=${LOCAL_PREFIX} ./install
cd ..
rm -rf hub.tgz hub-linux-amd64-2.2.9

## install docker-ce
sudo yum install -y \
  yum-utils \
  device-mapper-persistent-data \
  lvm2
sudo yum-config-manager--add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce
sudo systemctl start docker
sudo systemctl enable docker

## install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o ${LOCAL_PREFIX}/bin/docker-compose
chmod +x ${LOCAL_PREFIX}/bin/docker-compose

## install PHP
sudo yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum -y install \
  php72 \
  php72-php-ast \
  php72-php-pdo \
  php72-php-mysqlnd \
  php72-php-gmp \
  php72-php-intl \
  php72-php-mbstring \
  php72-php-opcache \
  php72-php-pecl-apcu \
  php72-php-dbg

## install anyenv
#git clone https://github.com/ndxbn/anyenv ~/.anyenv

## end installation
cd ~

# install zplug
export ZPLUG_HOME=~/.zplug
if [[ ! -e ${ZPLUG_HOME} ]]; then
  git clone https://github.com/zplug/zplug ${ZPLUG_HOME}
fi

