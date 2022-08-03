class Category < ApplicationRecord
  has_many :deals
  has_many :users
end
