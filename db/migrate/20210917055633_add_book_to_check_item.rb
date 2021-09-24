class AddBookToCheckItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :check_items, :book, foreign_key: true
  end
end
