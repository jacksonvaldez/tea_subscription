class Api::V1::Customers::SubscriptionsController < ApplicationController

  def index # get all subscriptions for a customer
    customer = Customer.where(id: params[:customer_id]).first

    if customer.class == Customer
      subscriptions = customer.subscriptions

      render json: SubscriptionSerializer.index(subscriptions)
    else
      render json: { error: "Customer ID is invalid" }, status: 400
    end

  end

end
