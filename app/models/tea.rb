class Tea < ApplicationRecord
  belongs_to :subscription
  validates :title, :description, :temperature_fahrenheit, :brew_time_seconds, presence: true
end