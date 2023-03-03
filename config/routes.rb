Rails.application.routes.draw do

  post '/api/v1/customers/:customer_id/subscriptions/:subscription_id', to: 'api/v1/subscription#create'
  patch '/api/v1/customers/:customer_id/subscriptions/:subscription_id/cancel', to: 'api/v1/subscription#cancel'
  get '/api/v1/customers/:customer_id/subscriptions', to: 'api/v1/subscription#index'
end
