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

# その他
### 使用しているポートとサービス
1024番以下のポートを使用するプロセスは、 `root` ユーザがホストOS 直上で起動する。
そうでないものは、常用の一般ユーザが Docker で動かしている。

ポート番号 | サービス
--:   | :--
22    | sshd
1025  | mailhog
8025  | mailhog
2181  | Zookeeper
3000  | grafana
3306  | MySQL
5671  | RabbitMQ
5672  | RabbitMQ
25672 | RabbitMQ
6379  | Redis
8080  | Jenkins
50000 | Jenkins
9000  | minio
27017 | MongoDB
