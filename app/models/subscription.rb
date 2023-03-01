class Subscription < ApplicationRecord
  belongs_to :customer
  validates :title, :price, :status, :frequency_weeks, presence: true

end