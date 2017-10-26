# dotfiles

# Installing
[GNU Stow](https://www.gnu.org/software/stow/) を使用する。

```bash
git clone https://github.com/ndxbn/dotfiles
cd dotfiles
for DIR in *
do
    if [ -d ${DIR} ]
    then
        stow ${DIR}
    fi
done
```
