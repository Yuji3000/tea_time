Rails.application.routes.draw do

  post '/api/v1/customer/:customer_id/subscription/:subscription_id', to: 'api/v1/subscription#create'
  patch '/api/v1/customer/:customer_id/subscription/:subscription_id/cancel', to: 'api/v1/subscription#cancel'
  get '/api/v1/customer/:customer_id/subscription', to: 'api/v1/subscription#index'
end
