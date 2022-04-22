Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      get 'customers/:customer_id/subscriptions', to: 'customers/subscriptions#index' # get all subscriptions for a customer
      post 'customer_subscriptions', to: 'customer_subscriptions#create' # create an association between a customer and subscription (start a subscription)
      delete 'customer_subscriptions', to: 'customer_subscriptions#destroy' # delete an association between a customer and subscription (cancel a subscription)

    end
  end

end
