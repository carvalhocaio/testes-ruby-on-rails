require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  describe 'GET /customers' do
    it 'works! status equal 200' do
      get customers_path
      expect(response).to have_http_status(200)
    end

    it 'index - JSON status equal 200' do
      get '/customers.json'
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(
        [id: 1, name: 'Maryanna Renner', email: 'mail-1@email.com']
      )
    end

    it 'show - JSON status equal 200' do
      get '/customers/1.json'
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(id: 1)
    end
  end
end
