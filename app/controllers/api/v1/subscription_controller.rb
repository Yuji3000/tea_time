class Api::V1::SubscriptionController < ApplicationController
  def create
    # require 'pry'; binding.pry
    subscription = Subscription.find_by_id(params[:subscription])
    tea = Tea.find_by_id(params[:tea])
    sub_tea = SubscriptionTea.new(subscription_id: "#{subscription.id}", tea_id: "#{tea.id}")
    customer_sub = CustomerSubscription.new(status: 1, customer_id: params[:customer_id], subscription_id: params[:subscription])
    if sub_tea.save && customer_sub.save
      render json: { success: 'New subscription of this tea added!'}, status: 201
    else
      render json: { error: 'Either an issue with the subscription type or tea!'}
    end
  end
end