class AddUserRefToDeals < ActiveRecord::Migration[7.0]
  def change
    add_reference :deals, :author, foreign_key: { to_table: :users }
    add_reference :deals, :category, foreign_key: { to_table: :categories }
  end
end
