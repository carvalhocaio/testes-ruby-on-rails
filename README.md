# TDD com Ruby on Rails, RSpec e Capybara

[Documentação RSpec](https://rspec.info/documentation/)

## Para que testar software?

- Garantir a qualidade do software;
- Segurança e facilidade na manutenção;
- Melhor design de software;
- Documentação técnica.

## Instalação do RSpec

Primeiramente, precisamos criar o arquivo `Gemfile` e adicionar as gems que serão utilizadas:

**Gemfile**

```
source 'https://rubygems.org'

gem 'rspec', '3.6'
```

Em seguida, podemos instalar as gems:  

```terminal
bundle install
```

E por fim, iniciar o Rspec:  

```
rspec --init
```

---
