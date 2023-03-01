class Tea < ApplicationRecord
  has_many :subscription_tea
  validates :title, :description, :temperature_fahrenheit, :brew_time_seconds, presence: true
end