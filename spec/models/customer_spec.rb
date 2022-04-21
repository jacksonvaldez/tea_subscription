require 'rails_helper'

RSpec.describe Customer, type: :model do

  context 'relationships' do
    it { should have_many(:customer_subscriptions) }
    it { should have_many(:subscriptions).through(:customer_subscriptions) }
  end

  it 'exists' do
    customer = Customer.create!
    expect(customer).to be_a(Customer)
  end

  it 'has attributes' do
    customer = Customer.create!

    expected = ["id", "first_name", "last_name", "email", "address", "created_at", "updated_at"]

    expect(customer.attributes.keys).to eq(expected)
  end

end
