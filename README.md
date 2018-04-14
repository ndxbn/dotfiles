# dotfiles
My Dotfiles and Configuration Scripts (of provisioning toolchain)

# インストール
## Configuration of Provisioning Toolchain
各環境ごとのスクリプトがあるので、それを実行する。
Windows の bash は Ubuntu なので、 `ubuntu.sh` を使用する。

`bash mac.sh`

`bash centos.sh`

`bash ubuntu.sh`

Ansible などの Configuration ステップでのツールを使うことも考えたのだけれど、あのへんは Immutable Infrastracture を前提にしたツールなので、dotfiles を使うようなユースケースとは合わない。（Provisioning Toolchain 自体が Immutable Infrastructure の文脈で登場した概念だと思う。）

## dotfiles
[GNU Stow](https://www.gnu.org/software/stow/) を使用する。

## Mac での docker のインストールについて
`brew install docker` は、`docker` コマンドのインストールであって、 `dockerd` のインストールではない。
`dockerd` は Homebrew Cask でインストーラを取ってきて、 `/Application/Docker.app` でインストールとセットアップする。


