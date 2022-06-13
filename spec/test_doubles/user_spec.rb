describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Hailey', password: 'password')
    allow(user).to receive(:age).and_return(21)
    puts user.name
    puts user.password
    puts user.age
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Claire')
    allow(user).to receive(:password).and_return('password')
    puts user.name
    puts user.password
    user.age
  end
end
