class RsvpSerializer < ActiveModel::Serializer
  attributes :id, :attending
  belongs_to :user
  belongs_to :event
end
