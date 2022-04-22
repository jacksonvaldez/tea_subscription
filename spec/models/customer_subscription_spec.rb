require 'rails_helper'

RSpec.describe CustomerSubscription, type: :model do
  context 'relationships' do
    it { should belong_to(:customer) }
    it { should belong_to(:subscription) }
  end

  it 'should exist' do
    customer = Customer.create!
    tea = Tea.create!
    subscription = Subscription.create!(tea_id: tea.id)

    cs = CustomerSubscription.create!(customer_id: customer.id, subscription_id: subscription.id)
    expect(cs).to be_a(CustomerSubscription)
  end

  it 'has attributes' do
    customer = Customer.create!
    tea = Tea.create!
    subscription = Subscription.create!(tea_id: tea.id)

    cs = CustomerSubscription.create!(customer_id: customer.id, subscription_id: subscription.id)

    expected = ["id", "status", "customer_id", "subscription_id", "created_at", "updated_at"]

    expect(cs.attributes.keys).to eq(expected)
  end

end
