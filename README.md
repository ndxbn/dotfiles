# dotfiles
My Dotfiles and Configuration Scripts (of provisioning toolchain)

# インストール
## Configuration of Provisioning Toolchain
各環境ごとのスクリプトがあるので、それを実行する。

- `bash mac.sh`
- `bash centos.sh`
- `bash windows.sh`

## dotfiles
[GNU Stow](https://www.gnu.org/software/stow/) を使用する。

## Mac での docker のインストールについて
`brew install docker` は、`docker` コマンドのインストールであって、 `dockerd` のインストールではない。
`dockerd` は Homebrew Cask でインストーラを取ってきて、 `/Application/Docker.app` でインストールとセットアップする。
