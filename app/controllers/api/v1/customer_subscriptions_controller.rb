class Api::V1::CustomerSubscriptionsController < ApplicationController

  def create # create an association between a customer and subscription (start a subscription)
    if params[:customer_id] && params[:subscription_id]
      cs = CustomerSubscription.where(customer_id: params[:customer_id], subscription_id: params[:subscription_id]).first
      cs = CustomerSubscription.create(customer_id: params[:customer_id], subscription_id: params[:subscription_id]) if cs.nil?

      cs.status == 0 ? status = 'active' : status = 'cancelled'

      render json: {
        type: 'CustomerSubscription',
        data: {
          id: cs.id,
          customer_id: cs.customer_id,
          subscription_id: cs.subscription_id,
          status: status
        }
      }
    else
      render json: { error: "Customer ID and/or Subscription ID is invalid" }, status: 400
    end
  end

  def update # cancel or continue a previous subscription
    cs = CustomerSubscription.where(customer_id: params[:customer_id], subscription_id: params[:subscription_id]).first
    if cs && (params[:status] == "0" || params[:status] == "1")
      cs.update!(status: params[:status].to_i) # 0(active), 1(cancelled)
      render json: { message: "Status of subscription #{params[:subscription_id]} for customer #{params[:customer_id]} changed." }
    else
      render json: { error: "Customer ID and/or Subscription ID is invalid" }, status: 400
    end
  end


end
