# Helper Methods (let e let!)

## let

Quando é necessário atribuir uma variável, ao invés de usar um bloco `before` para criar uma variável de instância,
use **let**. Ao usar **let**, a variável é carregada apenas quando ela é utilizada pela primeira vez no teste e fica na
cache até o teste em questão terminar.

## let!

Podemos usar o `let!` Para forçar a invocação do método/helper antes de cada teste.

# RSpec Tag (.rspec)

**executar apenas a tag collection**  
--tag type:collection

```bash
rspec . -t collection
```

**ignorar a tag slow**  
--tag ~slow

# Test Double

Dublê de teste é um termo genérico para qualquer objeto falso, utilizado no lugar de um objeto real, para propósitos de
testes.

Em outras palavras, um dublê age como um objeto Ruby, que pode ou não aceitar "mensagens" (métodos).

Dublês são 'rigorosos'/strict, ou seja, precisamos indicar quais mensagens ele aceita.

## Test Stubs

Um stub nada mais é do que forçar uma resposta específica para um determinado método de um objeto colaborador.

## Test Mock

Mocks são utilizados para a fase de `verify`. Mocks são usados para testar comportamentos.

## Mock com contagem de mensagens

```ruby
expect(obj).to receive(:message).once
expect(obj).to receive(:message).twice
expect(obj).to receive(:message).exactly(3).times
expect(obj).to receive(:message).at_least(:once)
expect(obj).to receive(:message).at_least(:twice)
expect(obj).to receive(:message).at_least(n).times
```
