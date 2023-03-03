
customer = Customer.create!(id: 1, first_name: "THECUSTOMER", last_name: "LastesterName", email: "customer@cus.com", address: "123 xmas lane 22822")
subscription1 = Subscription.create!(id: 1, title: "once a month", frequency_weeks: 4)
tea1 = Tea.create!(id: 1, title: "Sencha", description: "Japanese green tea", temperature_fahrenheit: 111.0, brew_time_seconds: 111, price: 1.11 )
tea2 = Tea.create!(id: 2, title: "matcha", description: "Powered Japanese green tea", temperature_fahrenheit: 222.0, brew_time_seconds: 222, price: 2.22 )

subscription2 = Subscription.create!(id: 2, title: "twice a month", frequency_weeks: 2)
customer_subscription1 = CustomerSubscription.create!(status: "active", customer_id: customer.id, subscription_id: subscription1.id)
customer_subscription2 = CustomerSubscription.create!(status: "cancelled", customer_id: customer.id, subscription_id: subscription2.id)
subscription_tea1 = SubscriptionTea.create!(tea_id: tea1.id, subscription_id: subscription1.id)