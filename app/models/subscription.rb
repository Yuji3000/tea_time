class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea

  validates :price_usd, :status, :frequency_weeks, presence: true

end