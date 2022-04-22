class Api::V1::CustomerSubscriptionsController < ApplicationController

  def create # create an association between a customer and subscription (start a subscription)
    if params[:customer_id] && params[:subscription_id]
      cs = CustomerSubscription.create(customer_id: params[:customer_id], subscription_id: params[:subscription_id])

      render json: {
        type: 'CustomerSubscription',
        data: {
          id: cs.id,
          customer_id: cs.customer_id,
          subscription_id: cs.subscription_id
        }
      }
    else
      render json: { error: "Customer ID and/or Subscription ID is invalid" }, status: 400
    end
  end

  def destroy # delete an association between a customer and subscription (cancel a subscription)
    cs = CustomerSubscription.where(customer_id: params[:customer_id], subscription_id: params[:subscription_id]).first

    if cs
      cs.destroy

      render json: { message: "Resource Destroyed"}
    else
      render json: { error: "Customer ID and/or Subscription ID is invalid" }, status: 400
    end
  end


end
