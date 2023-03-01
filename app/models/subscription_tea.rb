class SubscriptionTea < ApplicationRecord
  belongs_to :tea
  belongs_to :subscription

  validates_presence_of :price
end