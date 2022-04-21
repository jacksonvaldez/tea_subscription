class Api::V1::Customers::SubscriptionsController < ApplicationController

  def index # get all subscriptions for a customer
    customer = Customer.where(id: params[:customer_id]).first

    if customer.class == Customer
      subscriptions = customer.subscriptions

      render json: SubscriptionSerializer.index(subscriptions)
    else
      render json: { error: "An error occured" }, status: 404
    end

  end

  def create # create an association between a customer and subscription (start a subscription)
    binding.pry
  end

  def destroy # delete an association between a customer and subscription (cancel a subscription)
    binding.pry
  end


end
