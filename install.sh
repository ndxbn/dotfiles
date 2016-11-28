if ! which git >& /dev/null
then
  logger -s git command was not found.
  exit 1
fi

cd ~
git clone https://github.com/ndxbn/dotfiles.git
cd dotfiles