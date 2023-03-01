require 'rails_helper'

RSpec.describe SubscriptionTea, type: :model do
  describe "relationship" do
    it {should belong_to(:tea)}
    it {should belong_to(:subscription)}
  end

  describe "validatioins" do
    it {should validate_presence_of(:price)}
  end
end