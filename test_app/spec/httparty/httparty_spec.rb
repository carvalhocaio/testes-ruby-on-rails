describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body] } do
    # stub_request(:get, 'https://jsonplaceholder.typicode.com/posts/2')
    #   .to_return(status: 200, body: '', headers: { 'content-type': 'application/json' }

    response = HTTParty.get("https://jsonplaceholder.typicode.com/posts/#{[1, 2, 3, 4, 5].sample}")
    content_type = response.headers['content-type']
    expect(content_type).to match(%r{application/json})
  end

  it 'content-type-2', vcr: { cassette_name: 'jsonplaceholder/posts', record: :new_episodes } do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/4')
    content_type = response.headers['content-type']
    expect(content_type).to match(%r{application/json})
  end
end
