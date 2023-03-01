class Subscription < ApplicationRecord
  has_many :subscription_teas

  validates :title, :frequency_weeks, presence: true

end