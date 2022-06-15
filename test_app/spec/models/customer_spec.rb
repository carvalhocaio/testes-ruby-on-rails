require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'Create a Customer' do
    customer = create(:customer)
    expect(customer.full_name).to eq('Mrs. Julie Bowen')
  end
end

# factoryBot
# build -> not save
# create -> save
