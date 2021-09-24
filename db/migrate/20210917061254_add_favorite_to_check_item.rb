class AddFavoriteToCheckItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :check_items, :favorite, foreign_key: true
  end
end
