
# Project ごのせん

## 動作環境

ruby 2.2.2p95


## railsの開発環境の構築(ubuntu16.04 + rbenv)
```
### 1. 周辺ライブラリのインストール

ctrl + alt + 't'でターミナルをたち上げる

$ sudo apt-get install git

$ sudo apt-get install build-essential

$ sudo apt-get install libssl-dev

$ sudo apt-get install libsqlite3-dev

$ sudo apt-get install nodejs

$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

$ type rbenv

### 2. rubyのインストール

 git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

$ rbenv install -l

$ rbenv install 2.2.2p95

$ rbenv rehash

$ rbenv global 2.2.2p95

$ gem install bundler


```

## インストール方法

### 1. ソースの取得

SSH:
`git@github.com:gonosen/gonosen.git`

HTTPS:
`https://github.com/gonosen/gonosen`

### 2. セットアップ
```
cd gonosen
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
```

### 3. サーバーの立ち上げ
```
bundle exec rails server
```

### 4. サイトへのアクセス（ローカル）
ブラウザを立ち上げて
localhost:3000
にアクセス

### 5. サーバーのシャットダウン
ctrl + 'c'


* URL一覧
  * admins
    - sign_in      -> /admins/sign_in
    - edit         -> /admins/スピーカーのID/edit
  * interns
    - overview     -> /teachers/overview
    - information  -> /teachers/information
    - index        -> /teachers
    - new          -> /teachers/new
    - edit         -> /teachers/'internID'/edit
    - show         -> /teachers/'internID'/show

