class Api::V1::SubscriptionController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    customer_sub = CustomerSubscription.new(status: 0, customer_id: params[:customer_id], subscription_id: params[:subscription_id])
    if customer_sub.save
      render json: { success: 'New subscription of this tea added!'}, status: 201
    else
      render json: { error: 'Issue please check URl!'}, status: 404
    end
  end

  def cancel
    customer_sub = CustomerSubscription.where(customer_id: params[:customer_id], subscription_id: params[:subscription_id]).first
    if customer_sub.status == "active"
      customer_sub.update(status: "cancelled")
      render json: { success: "This subscription has be successfully cancelled"}, status: 201
    else
      render json: { error: "There is an error here buddy"}, status: 404
    end
  end

  def index
    customer = Customer.find(params[:customer_id])
    customer.subscriptions
    if customer.subscriptions.present?
      render json: SubscriptionSerializer.new(customer.subscriptions), status: 201
    end
  end
end