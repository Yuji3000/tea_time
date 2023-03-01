require "rails_helper"

RSpec.describe Subscription, type: :model do
  describe "relationship" do
    it { should have_many(:subscription_teas)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:frequency_weeks)}
  end
end