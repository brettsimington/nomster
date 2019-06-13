class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: { minimum: 3, too_long: "%{count} characters is the minimum allowed!" }
  validates :address, presence: true
  validates :description, presence: true
  validates :caption, presence: true
  validates :place_id, presence: true
  has_many :photo
end
