class Tea < ApplicationRecord
  has_many :subscription_teas
  has_many :subscriptions, through: :subscription_teas
  validates :title, :description, :temperature_fahrenheit, :brew_time_seconds, presence: true
end