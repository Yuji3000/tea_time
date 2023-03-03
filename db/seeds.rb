

customer = Customer.create!(first_name: "THECUSTOMER", last_name: "LastesterName", email: "customer@cus.com", address: "123 xmas lane 22822")

subcription1 = Subscription.create!(title: "once a month", frequency_weeks: 4)
subcription2 = Subscription.create!(title: "twice a month", frequency_weeks: 2)

tea1 = Tea.create!(price: 11.11, title: "Sencha", description: "Japanese green tea", temperature_fahrenheit: 111.0, brew_time_seconds: 111 )
tea2 = Tea.create!(price: 12.11, title: "matcha", description: "Powered Japanese green tea", temperature_fahrenheit: 222.0, brew_time_seconds: 222 )

customer_subscription1 = CustomerSubscription.create!(status: "active", customer_id: "#{customer.id}", subscription_id: "#{subcription1.id}")
# customer_subscription2 = CustomerSubscription.create!(status: "active", customer_id: "#{customer.id}", subscription_id: "#{subcription2.id}")

# subscription_tea1 = SubscriptionTea.create!(tea_id: "#{tea1.id}", subscription_id: "#{subcription1.id}")