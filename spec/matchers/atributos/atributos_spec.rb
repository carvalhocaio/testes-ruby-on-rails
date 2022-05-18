require 'pessoa'

describe 'Atributos' do
  it 'have attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'Claire'
    pessoa.idade = 21
    expect(pessoa).to have_attributes(nome: 'Claire', idade: 21)
    expect(pessoa).to have_attributes(nome: starting_with('C'), idade: (be > 18))
  end
end
