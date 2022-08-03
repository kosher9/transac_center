class Category < ApplicationRecord
  has_many :deals
  has_many :users

  validates :name, length: { minimum: 1 }
  validates :icon, presence: true
end
