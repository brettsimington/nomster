class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, too_long: "%{count} characters is the minimum allowed!" }
  validates :address, presence: true
  validates :description, presence: true
end
