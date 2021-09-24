class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :order_details, dependent: :destroy
  
  
  enum status: {registered: 0, payed: 1, deviverd: 2}
  
  
    def total_price
        line_items.to_a.sum{ |item| item.total_price }
    end
    
    def total_number
        line_items.to_a.sum { |item| item.quantity }
    end
    

end
