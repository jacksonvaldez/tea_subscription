require 'rails_helper'

RSpec.describe 'create an association between a customer and subscription (start a subscription for a customer)' do

  before(:each) do
    @customer = Customer.create!

    tea = Tea.create!
    @subscription = Subscription.create!(tea_id: tea.id)
  end

  it 'create an association between a customer and subscription (start a subscription for a customer)' do
    post "/api/v1/customer_subscriptions?customer_id=#{@customer.id}&subscription_id=#{@subscription.id}"

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response_body.keys).to eq([:type, :data])
    expect(response_body[:type]).to be_a(String)
    expect(response_body[:data].keys).to eq([:id, :customer_id, :subscription_id])
    expect(CustomerSubscription.all.length).to eq(1)
  end

end
