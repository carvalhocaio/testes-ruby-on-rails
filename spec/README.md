# Helper Methods (let e let!)

## let

Quando é necessário atribuir uma variável, ao invés de usar um bloco `before` para criar uma variável de instância,
use **let**. Ao usar **let**, a variável é carregada apenas quando ela é utilizada pela primeira vez no teste e fica na
cache até o teste em questão terminar.

## let!

Podemos usar o `let!` Para forçar a invocação do método/helper antes de cada teste.
