# SCRUManage

Aplikacja webowa do kontrolowania przebegu projektów w metodologii SCRUM.


### Instalacja

OS: Linux 
Ruby: ruby 2.4.0p0 
Rails: Rails 5.0.2

1.) Instalacja zależności dla Ruby / Rails
```sh
$ sudo apt-get update
$ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs curl
```
2.) Instalacja version managera + ruby + rails
```sh
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
$ \curl -sSL https://get.rvm.io | bash -s stable --ruby
$ gem install rails
$ gem install bundler
```

3.) Sklonuj repozytorium
```sh
$ git clone https://github.com/barpaw/SCRUManage.git
```
4.) Przejdz do folderu SCRUManage (polecenie ls powinno zwrócić szkielet aplikacji)
```sh
$ ls
app  config     db    Gemfile       lib  public    README.md  tmp
bin  config.ru  exit  Gemfile.lock  log  Rakefile  test       vendor
```

5.) Uruchom serwer
```sh
$ rails s
LUB / or
$ rails server
```

License
----

MIT


**Free Software, Hell Yeah!**
