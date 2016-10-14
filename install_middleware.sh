yum update -y
yum -y install epel-release
yum -y install\
  bind-utils\
  bzip2-devel\
  curl-devel\
  cronie-noanacron\
  cmake3\
  expat-devel\
  gcc\
  gcc-c++\
  gettext-devel\
  git\
  gmp-devel\
  graphviz\
  kernel-devel\
  libaio-devel\
  libcurl-devel\
  libedit\
  libedit-devel\
  libevent\
  libevent-devel\
  libffi-devel\
  libjpeg-devel\
  libpng-devel\
  libtool\
  libtool-ltdl-devel\
  libxml2-devel\
  icu\
  make\
  monit\
  monitcronie\
  monitpostfix\
  ncurses-devel\
  openssl-devel\
  pcre\
  pcre-devel\
  perl\
  postfix\
  python-docutils\
  python34\
  readline-devel\
  sqlite-devel\
  tk-devel\
  unzip\
  wget\
  which\
  xz\
  xz-devel\
  xz-libs\
  zlib-devel\
  zip

ln -s /usr/bin/cmake3 /usr/local/bin/cmake

# any env
git clone https://github.com/riywo/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
exec $SHELL -l
anyenv install jenv
anyenv install luaenv
anyenv install nodenv
anyenv install phpenv
anyenv install pyenv
anyenv install rbenv
exec $SHELL -l
# anyenv update plugin
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
