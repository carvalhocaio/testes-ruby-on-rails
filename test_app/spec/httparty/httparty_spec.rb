describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'jsonplaceholder' } do
    # stub_request(:get, 'https://jsonplaceholder.typicode.com/posts/2')
    #   .to_return(status: 200, body: '', headers: { 'content-type': 'application/json' }

    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/2')
    content_type = response.headers['content-type']
    expect(content_type).to match(%r{application/json})
  end
end
