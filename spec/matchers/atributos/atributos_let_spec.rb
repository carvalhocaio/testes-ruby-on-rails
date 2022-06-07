require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Hailey'
    pessoa.idade = 21

    expect(pessoa).to have_attributes(nome: start_with('H'), idade: 21)
  end
end
