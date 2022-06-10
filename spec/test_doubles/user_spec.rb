describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Hailey', password: 'password')
    allow(user).to receive(:idade).and_return(21)
    puts user.name
    puts user.password
    puts user.idade
  end
end
