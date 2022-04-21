require 'rails_helper'

RSpec.describe Subscription, type: :model do

  context 'relationships' do
    it { should belong_to(:tea) }
    it { should have_many(:customer_subscriptions) }
    it { should have_many(:customers).through(:customer_subscriptions) }

  end

  it 'exists' do
    tea = Tea.create!
    subscription = Subscription.create!(tea_id: tea.id)

    expect(subscription).to be_a(Subscription)
  end

  it 'has attributes' do
    tea = Tea.create!
    subscription = Subscription.create!(tea_id: tea.id)

    expected = ["id", "title", "price", "frequency", "tea_id", "created_at", "updated_at"]

    expect(subscription.attributes.keys).to eq(expected)
  end

end
