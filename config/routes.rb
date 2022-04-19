Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      get 'customers/:customer_id/subscriptions', to: 'customers/subscriptions#index'
      post 'customers/:customer_id/subscriptions/:subscription_id', to: 'customers/subscriptions#create'
      delete 'customers/:customer_id/subscriptions/:subscription_id', to: 'customers/subscriptions#destroy'

    end
  end

end
