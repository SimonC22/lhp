class Event < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  validates :event_type,  presence: true, length: { maximum: 50 }
  validates :date,  presence: true
end
