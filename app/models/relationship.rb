class Relationship < ActiveRecord::Base
  belongs_to :country, class_name: "Country"
  belongs_to :event, class_name: "Event"
  validates :country_id, presence: true
  validates :event_id, presence: true
end
