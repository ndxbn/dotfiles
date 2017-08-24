# dotfiles

# install
[GNU Stow](https://www.gnu.org/software/stow/) を使用する。

```bash
cd dotfiles
for DIR in *
do
    if [ -d ${DIR} ]
    then
        stow ${DIR}
    fi
done
```
