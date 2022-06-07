require 'pessoa'

describe 'Atributos' do
  before(:each) do
    puts '>>>>>>>> BEFORE EACH test'
    @pessoa = Pessoa.new
  end

  after(:each) do
    puts '>>>>>>>> AFTER EACH test'
  end

  around(:each) do |test|
    puts 'BEFORE'
    @pessoa = Pessoa.new

    test.run

    @pessoa.nome = 'Without name!'
    puts "AFTER >>>>>>  #{@pessoa.inspect}"
  end

  it 'have attributes' do
    @pessoa.nome = 'Claire'
    @pessoa.idade = 21

    expect(@pessoa).to have_attributes(nome: 'Claire', idade: 21)
    expect(@pessoa).to have_attributes(nome: starting_with('C'), idade: (be > 18))
  end
end
