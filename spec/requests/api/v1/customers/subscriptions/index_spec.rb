require 'rails_helper'

RSpec.describe 'Get All Subscriptions for a customer' do

  before(:each) do
    @customer = Customer.create!

    5.times do
      tea = Tea.create!
      subscription = Subscription.create!(tea_id: tea.id)

      CustomerSubscription.create!(customer_id: @customer.id, subscription_id: subscription.id)
    end

    tea = Tea.create!
    @other_subscription = Subscription.create!(tea_id: tea.id)
  end

  it 'returns all active subscriptions for a customer' do
    get "/api/v1/customers/#{@customer.id}/subscriptions"

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response.keys).to eq([:data])
    expect(parsed_response[:data]).to be_a(Array)
    expect(parsed_response[:data].first.keys).to eq([:id, :title, :price, :frequency, :tea_id])
  end

  it 'returns error if customer id is invalid' do
    get "/api/v1/customers/invalid/subscriptions"

    expect(response).to_not be_successful
  end

end
