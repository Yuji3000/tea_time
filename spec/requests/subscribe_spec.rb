require "rails_helper"

RSpec.describe "add a subscription" do
  it 'a user can add a subscription' do
    customer = Customer.create!(first_name: "THECUSTOMER", last_name: "LastesterName", email: "customer@cus.com", address: "123 xmas lane 22822")

    subscription1 = Subscription.create!(title: "once a month", frequency_weeks: 4)
    # subscription2 = Subscription.create!(title: "twice a month", frequency_weeks: 2)

    tea1 = Tea.create!(title: "Sencha", description: "Japanese green tea", temperature_fahrenheit: 111.0, brew_time_seconds: 111, price: 1.11 )
    tea2 = Tea.create!(title: "matcha", description: "Powered Japanese green tea", temperature_fahrenheit: 222.0, brew_time_seconds: 222, price: 2.22 )

    # customer_subscription1 = CustomerSubscription.create!(status: "active", customer_id: "#{customer.id}", subscription_id: "#{subscription1.id}")
    # customer_subscription2 = CustomerSubscription.create!(status: "active", customer_id: "#{customer.id}", subscription_id: "#{subscription2.id}")

    # subscription_tea1 = SubscriptionTea.create!(tea_id: "#{tea1.id}", subscription_id: "#{subscription1.id}")

    post "/api/v1/customer/#{customer.id}/subscription", as: :json, params: {
      "subscription": "1",
      "tea": "1"
    } 

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response.status).to eq(201)
    expect(response_body).to have_key(:success)
    expect(response_body[:success]).to eq("New subscription of this tea added!")
  end
end