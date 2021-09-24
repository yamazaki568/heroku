class RemoveProductidInCheckItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_id
  end
end
