class Country < ActiveRecord::Base

  has_many :relationships, dependent: :destroy
  has_many :events, through: :relationships, source: :event
  validates :name,  presence: true, length: { maximum: 50 }

end
