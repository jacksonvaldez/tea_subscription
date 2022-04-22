require 'rails_helper'

RSpec.describe 'update a customers subscription status' do

  before(:each) do
    @customer = Customer.create!

    tea = Tea.create!
    @subscription = Subscription.create!(tea_id: tea.id)

    @cs = CustomerSubscription.create(customer_id: @customer.id, subscription_id: @subscription.id)
  end

  it 'cancels a subscription for a customer' do
    expect(CustomerSubscription.first.status).to eq(0)

    patch "/api/v1/customer_subscriptions?customer_id=#{@customer.id}&subscription_id=#{@subscription.id}&status=1"

    response_body = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    expect(CustomerSubscription.first.status).to eq(1)
  end

  it 'continues a subscription for a customer' do
    CustomerSubscription.first.status = 1

    patch "/api/v1/customer_subscriptions?customer_id=#{@customer.id}&subscription_id=#{@subscription.id}&status=0"

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(CustomerSubscription.first.status).to eq(0)
  end

end
