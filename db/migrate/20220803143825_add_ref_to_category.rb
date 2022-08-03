class AddRefToCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :author, foreign_key: { to_table: :users }
    add_reference :categories, :deal, foreign_key: { to_table: :deals }
  end
end
