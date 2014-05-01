#!/bin/sh
echo -n "Enter your name for git and press [ENTER]: "
read name
echo -n "Enter your email address for git and press [ENTER]: "
read email

mkdir ~/projects
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install apple-gcc42 autoconf automake bsdmake cloog cloog018 cmake coreutils cowsay fish gawk gcc49 gdbm gfortran ghc git gmp gmp4 gnupg gnutls go haskell-platform htop-osx isl isl011 jpeg jq libevent libmpc libmpc08 libtasn1 libtiff libtool lighttpd maven memcached mercurial mpfr mpfr2 multitail mysql-connector-c nettle node openssl parallel pcre pkg-config pstree pwgen pypy python python3 r readline rename spim spiped sqlite terminal-notifier tree vim watch wget xz zookeeper
chsh -s /usr/local/bin/fish
git config --global --add "user.name" "$name"
git config --global --add "user.email" "$email"
echo "set -gx PATH /usr/local/bin /usr/local/share/python /usr/local/share/npm/bin $PATH" >> ~/.config/fish/config.fish
export PATH=/usr/local/bin:/usr/local/share/python:/usr/local/share/npm/bin:$PATH
sudo pip install boto stormssh httpie
cd projects
git clone https://github.com/firemanphil/zookeeper-ranger.git
cd zookeeper-ranger
npm install
cd ..
git config --global credential.helper osxkeychain
