class SubscriptionSerializer 
  include JSONAPI::Serializer 
  attributes :title, :frequency_weeks
end