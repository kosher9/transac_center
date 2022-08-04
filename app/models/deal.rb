class Deal < ApplicationRecord
  belongs_to :author, class_name: '::User', foreign_key: :author_id
  belongs_to :category

  validates :name, length: { minimum: 1 }
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
end
