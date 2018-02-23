# dotfiles

# Installing
[GNU Stow](https://www.gnu.org/software/stow/) を使用する。

```bash
git clone https://github.com/ndxbn/dotfiles.git
cd dotfiles

for DIR in */; do
    stow ${DIR}
done
```
