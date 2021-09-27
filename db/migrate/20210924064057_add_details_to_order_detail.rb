class AddDetailsToOrderDetail < ActiveRecord::Migration[5.1]
  def change
    add_column :order_details, :order_id, :integer
    add_column :order_details, :book_id, :integer
    add_column :order_details, :quantity, :integer
    
  end
end
