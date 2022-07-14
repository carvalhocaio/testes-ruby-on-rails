require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  describe 'GET /customers' do
    it 'JSON Schema' do
      get '/customers/1.json'
      expect(response).to match_response_schema('customer')
    end

    it 'works! status equal 200' do
      get customers_path
      expect(response).to have_http_status(200)
    end

    it 'index - JSON status equal 200' do
      get '/customers.json'
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(
        [id: /\d/, name: (be_kind_of String), email: (be_kind_of String)]
      )
    end

    it 'show - JSON status equal 200' do
      get '/customers/1.json'
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(id: /\d/, name: (be_kind_of String), email: (be_kind_of String))
    end

    it 'show -  RSpec puro + JSON' do
      get '/customers/1.json'
      response_body = JSON.parse(response.body)
      expect(response_body.fetch('id')).to eq(1)
      expect(response_body.fetch('name')).to be_kind_of(String)
      expect(response_body.fetch('email')).to be_kind_of(String)
    end

    it 'create - JSON' do
      member = create(:member)
      login_as(member, scope: :member)

      headers = { 'ACCEPT' => 'application/json' }

      customer_params = attributes_for(:customer)
      post '/customers.json', params: { customer: customer_params }, headers: headers

      expect(response.body).to include_json(
        id: /\d/,
        name: customer_params[:name],
        email: customer_params.fetch(:email)
      )
    end

    it 'update - JSON' do
      member = create(:member)
      login_as(member, scope: :member)

      headers = { 'ACCEPT' => 'application/json' }

      customer = Customer.first
      customer.name += ' - Update'

      patch "/customers/#{customer.id}.json", params: { customer: customer.attributes }, headers: headers

      expect(response.body).to include_json(
        id: /\d/,
        name: customer.name,
        email: customer.email
      )
    end

    it 'destroy - JSON' do
      member = create(:member)
      login_as(member, scope: :member)

      headers = { 'ACCEPT' => 'application/json' }

      customer = Customer.first

      expect { delete "/customers/#{customer.id}.json", headers: headers }.to change(Customer, :count).by(-1)
    end
  end
end
