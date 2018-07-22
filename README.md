# dotfiles
My Dotfiles and Configuration Scripts (of provisioning toolchain)

# Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)

# インストール

```bash
git clone https://github.com/ndxbn/dotfiles ~/dotfiles
pushd ~/dotfiles
stow */
popd
```

# 注意事項など
## Mac での docker のインストールについて
`brew install docker` は、`docker` コマンドのインストールであって、 `dockerd` のインストールではありません。
`dockerd` は Homebrew Cask でインストーラを取ってきて、 `/Application/Docker.app` でインストールとセットアップしてください。

# その他
### 使用しているポートとサービス
1023番以下のポートを使用するプロセスは、 `root` ユーザがホストOS 直上で起動する用途で使用します。
そうでないものは、常用の一般ユーザが Docker で動かすようにしています。

1023番ポートを境界にしているのは、[IANA の System Port の範囲](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)に合わせるためです。
System Port 以外はｍポート番号とそのポートを使うサービスが一致していないことがあります。

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
18000 | PlantUML Server
27017 | MongoDB
