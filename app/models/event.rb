class Event < ActiveRecord::Base

  has_many :relationships, dependent: :destroy
  has_many :countries, through: :relationships, source: :country
  validates :name,  presence: true, length: { maximum: 50 }
  validates :evtype_id,  presence: true
  validates :date,  presence: true

end
