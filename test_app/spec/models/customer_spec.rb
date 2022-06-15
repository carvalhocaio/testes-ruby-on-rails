require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    customer = create(:customer, name: 'Leia Organa')
    expect(customer.full_name).to eq('Mrs. Leia Organa')
  end

  it '#customer_vip' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
    expect(customer.days_to_pay).to eq(30)
  end

  it '#customer_default' do
    customer = create(:customer_default)
    expect(customer.vip).to eq(false)
    expect(customer.days_to_pay).to eq(15)
  end

  it '#full_name - faker' do
    customer = create(:user) # ou create(:customer)
    expect(customer.full_name).to start_with('Mrs.')
  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end

# factoryBot
# build -> not save
# create -> save
