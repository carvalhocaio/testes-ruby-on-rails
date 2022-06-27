# RSpec - Ruby on Rails

## Callbacks

`after(:build)` -> depois de ser criado em memória com **build** ou **create**.

`before(:create)` -> antes de efetivamente salvar.

`after(:create)` -> depois que é salvo.

## Testes em ordem aleatória

`bin/rspec --order random`

`bin/rspec --seed <number>` -> executar em uma ordem definida
