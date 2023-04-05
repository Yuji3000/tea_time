require "rails_helper"

RSpec.describe Subscription, type: :model do
  describe "relationship" do
    it { should belong_to(:customer)}
    it { should belong_to(:tea)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:price_usd)}
    it { should validate_presence_of(:status)}
    it { should validate_presence_of(:frequency_weeks)}
  end
end