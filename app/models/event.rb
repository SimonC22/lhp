class Event < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  validates :evtype_id,  presence: true
  validates :date,  presence: true
end
