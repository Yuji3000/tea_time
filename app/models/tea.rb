class Tea < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions
  validates :title, :description, :temperature_f, :brew_time_seconds, presence: true
end