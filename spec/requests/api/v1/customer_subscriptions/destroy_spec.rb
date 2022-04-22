require 'rails_helper'

RSpec.describe 'delete an association between a customer and subscription (start a subscription for a customer)' do

  before(:each) do
    @customer = Customer.create!

    tea = Tea.create!
    @subscription = Subscription.create!(tea_id: tea.id)

    @cs = CustomerSubscription.create(customer_id: @customer.id, subscription_id: @subscription.id)
  end

  it 'deletes an association between a customer and subscription (end a subscription for a customer)' do
    delete "/api/v1/customer_subscriptions?customer_id=#{@customer.id}&subscription_id=#{@subscription.id}"

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response_body).to eq({:message=>"Resource Destroyed"})
    expect(CustomerSubscription.all.length).to eq(0)
  end

end
