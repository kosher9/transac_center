class Category < ApplicationRecord
  has_many :deals, dependent: :destroy
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  validates :name, length: { minimum: 1 }
  validates :icon, presence: true
end
