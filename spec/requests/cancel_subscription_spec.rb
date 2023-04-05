require "rails_helper"

RSpec.describe "cancel a subscription" do
  it 'a user can cancel a subscription' do
    customer = Customer.create!(id: 1, first_name: "THECUSTOMER", last_name: "LastesterName", email: "customer@cus.com", address: "123 xmas lane 22822")
    subscription1 = Subscription.create!(id: 1, title: "once a month", frequency_weeks: 4)
    tea1 = Tea.create!(id: 1, title: "Sencha", description: "Japanese green tea", temperature_fahrenheit: 111.0, brew_time_seconds: 111, price: 1.11 )
    tea2 = Tea.create!(id: 2, title: "matcha", description: "Powered Japanese green tea", temperature_fahrenheit: 222.0, brew_time_seconds: 222, price: 2.22 )
    customer_subscription1 = CustomerSubscription.create!(status: "active", customer_id: customer.id, subscription_id: subscription1.id)
    subscription_tea1 = SubscriptionTea.create!(tea_id: tea1.id, subscription_id: subscription1.id)

    patch "/api/v1/customers/1/subscriptions/1/cancel"

    response_body = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(201)
    expect(response_body).to have_key(:success)
    expect(response_body[:success]).to eq("This subscription has be successfully cancelled")
  end

  # it 'sad-path a user can cancel a subscription' do
  #   customer = Customer.create!(id: 1, first_name: "THECUSTOMER", last_name: "LastesterName", email: "customer@cus.com", address: "123 xmas lane 22822")
  #   subscription1 = Subscription.create!(id: 1, title: "once a month", frequency_weeks: 4)
  #   tea1 = Tea.create!(id: 1, title: "Sencha", description: "Japanese green tea", temperature_fahrenheit: 111.0, brew_time_seconds: 111, price: 1.11 )
  #   tea2 = Tea.create!(id: 2, title: "matcha", description: "Powered Japanese green tea", temperature_fahrenheit: 222.0, brew_time_seconds: 222, price: 2.22 )
  #   customer_subscription1 = CustomerSubscription.create!(status: "active", customer_id: customer.id, subscription_id: subscription1.id)
  #   subscription_tea1 = SubscriptionTea.create!(tea_id: tea1.id, subscription_id: subscription1.id)

  #   patch "/api/v1/customers/10000/subscriptions/1/cancel"

  #   response_body = JSON.parse(response.body, symbolize_names: true)
  #   expect(response).to_not be_successful
  #   expect(response.status).to eq(404)
  #   expect(response_body).to have_key(:error)
  #   expect(response_body[:error]).to eq("There is an error here buddy")
  # end
end