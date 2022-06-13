require 'rails_helper'

RSpec.describe Customer, type: :model do
  # fixtures :customers
  fixtures :all

  it 'Create a Customer' do
    customer = customers(:julie)
    expect(customer.full_name).to eq('Mrs. Julie Bowen')
  end
end
