class Subscription < ApplicationRecord
  has_many :subscription_teas
  has_many :teas, through: :subscription_teas

  validates :title, :frequency_weeks, presence: true

end