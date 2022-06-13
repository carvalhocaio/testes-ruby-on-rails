describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) # Pode ser por herança
  end

  it 'be_an / be_a' do
    expect('Rails').to be_an(String)
    expect('Rails').to be_a(String)
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end
end
