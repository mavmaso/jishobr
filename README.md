Jisho br
=======

**Jisho br** é uma aplicação feita para ser um dicionario da lingua japonesa, tanto de palavras como de kanji 
e ainda oferecer mais recursos conforme for crescendo. Tudo para se tornar um grande aliado aos estudantes
dessa fascinante lingua.

## Setup do Projeto

### Pré requisitos

 - Ter [Ruby](https://www.ruby-lang.org) versão 2.5.1 previamente instalado na máquina

### Configurando e executando testes

 - `bin/setup`
 - `bundle exec rspec`

#### Docker
 - `docker-compose build`
 - `docker-compose run --rm web bin/setup`
 - `docker-compose run --rm --service-ports web bash`
 - `bundle exec rspec`

### Executando a aplicação

Após os passos de configuração executar o comando `rails server` e acessar pela
url [http://localhost:3000/](http://localhost:3000/).

#### Docker
 - `docker-compose build`
 - `docker-compose run --rm web bin/setup`
 - `docker-compose run --rm web rails assets:precompile`
 - `docker-compose up`

## Contribuindo


### Principais contribuidores
 - [mavmaso](https://github.com/mavmaso)
