# dotfiles

# 前提知識

* [about-bash-profile-bashrc-and-where-should-alias-be-written-in](http://stackoverflow.com/questions/902946/about-bash-profile-bashrc-and-where-should-alias-be-written-in)
* [bash man page](https://www.gnu.org/software/bash/manual/bash.html)

# Usage
## install
home ディレクトリの dotfile を上書きするという、クソみたいな実装をしてる。

```bash
git clone https://github.com/ndxbn/dotfiles
```
# 各ファイルの規約・方針
## .bashrc
自由にファイルとかを配置できない環境で、ログイン中のbashに自分好みの設定を適用するスクリプト。

* ファイルの存在に依存しない
* ファイルへのI/Oしない
* 環境変数に追加・変更しない
* 普段 `~/.bashrc` に書いているような `alias` をひたすら連打する
* GNU Util じゃないコマンドとかは、使用しない。可能な限り **Bashだけ入っていれば、どんな環境でも使えることを意識する**

要するに、 **副作用のないBashスクリプトを書く** ように、意識するということ。
