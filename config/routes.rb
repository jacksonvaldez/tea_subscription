Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      get 'customers/:customer_id/subscriptions', to: 'customers/subscriptions#index' # get all subscriptions for a customer
      post 'customer_subscriptions', to: 'customer_subscriptions#create' # create an association between a customer and subscription (start a subscription)
      patch 'customer_subscriptions', to: 'customer_subscriptions#update' # update an association between a customer and subscription (cancel or continue a subscription)

    end
  end

end
