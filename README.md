# dotfiles

You should use bash after read [bash man page](https://www.gnu.org/software/bash/manual/bash.html),

# Usage

## install all "dotfiles"
以下のコマンドで、インストールできる。
`curl -s https://ndxbn.github.io/dotfiles/install.sh | bash`

## only shell options

dotfilesを上書きしたり、設定できない環境も多々ある。
例えば、「商用の本番環境へ、メンテナンスなどで直接アクセスせざるを得ない場合」などがそうだ。
そんなときは、以下のコマンドを実行すれば、シェルのオプションだけを自分好みに設定できる。

* このコマンドレットは、 `.bashrc` を実行する。

# 各ファイルの規約・方針

## .bash_profile
環境変数とか、ディレクトリ構造の検証（assertion）とかをする。
ログインシェルとして起動したときだけやればいい処理を書く。

## .bashrc
自由にファイルとかを配置できない環境で、ログイン中のbashに自分好みの設定を適用するスクリプト。


* ファイルの存在に依存しない
* ファイルへのI/Oしない
* 環境変数に追加・変更しない
* 普段 `~/.bashrc` に書いているような `alias` をひたすら連打する
* GNU Util じゃないコマンドとかは、使用しない。可能な限り **Bashだけ入っていれば、どんな環境でも使えることを意識する**

要するに、 **副作用のないBashスクリプトを書く** ように、意識するということ。