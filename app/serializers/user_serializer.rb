class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username
  has_many :rsvps
  has_many :attending_events, through: :rsvps, :source => :event
end
