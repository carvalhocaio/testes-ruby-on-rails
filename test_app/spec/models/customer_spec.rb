require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    customer = create(:customer, name: 'Leia Organa')
    expect(customer.full_name).to eq('Mr(s). Leia Organa')
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
    expect(customer.full_name).to start_with('Mr(s).')
  end

  it '#attributes_for' do
    attrs = attributes_for(:customer)
    puts attrs

    attrs_vip = attributes_for(:customer_vip)
    puts attrs_vip

    attrs_default = attributes_for(:customer_default)
    puts attrs_default

    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with('Mr(s).')
  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end

# factoryBot
# build -> not save
# create -> save
