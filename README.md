# dotfiles

If you has NOT read [bash man page](https://www.gnu.org/software/bash/manual/bash.html), you SHOULD NOT use bash.（意訳: [bash のマニュアル](https://linuxjm.osdn.jp/html/GNU_bash/man1/bash.1.html) もろくに読んでいない分際で、bashを使おうとするんじゃねぇ）

# Usage

## insatll all "dotfiles"

## only shell options

dotfilesを上書きしたり、設定できない環境も多々あるだろう。
例えば、「商用の本番環境へ、メンテナンスなどで直接アクセスせざるを得ない場合」などがそうだ。
そういう場合、シェルのオプションだけを自分好みに設定したい。そういうときに使う。

# 各ファイルの規約・方針

## .bash_profile
環境変数とか、ディレクトリ構造の検証（assertion）とかをするスクリプト。
ログインシェルとして起動したときだけやればいいやつを書く。

## .bashrc
自由にファイルとかを配置できない環境で、ログイン中のbashに自分好みの設定を適用するスクリプト。
"only shell options" では、このファイルを使う。

* ファイルの存在に依存しない
* ファイルへのI/Oしない
* 環境変数に追加・変更しない
* 普段 `~/.bashrc` に書いているような `alias` をひたすら連打する
* GNU Util じゃないコマンドとかは、使用しない。可能な限り **Bashだけ入っていれば、どんな環境でも使えることを意識する**