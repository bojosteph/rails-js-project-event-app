class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :start_date, :end_date
  has_many :rsvps
end
