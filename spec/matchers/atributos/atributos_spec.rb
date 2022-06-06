require 'pessoa'

describe 'Atributos' do
  before(:each) do
    puts '>>>>>>>> BEFORE EACH test'
    @pessoa = Pessoa.new
  end

  after(:each) do
    puts '>>>>>>>> AFTER EACH test'
  end

  it 'have attributes' do
    @pessoa.nome = 'Claire'
    @pessoa.idade = 21

    expect(@pessoa).to have_attributes(nome: 'Claire', idade: 21)
    expect(@pessoa).to have_attributes(nome: starting_with('C'), idade: (be > 18))
  end
end
