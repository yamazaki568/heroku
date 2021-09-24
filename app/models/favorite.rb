class Favorite < ApplicationRecord
    has_many :check_items
    has_many :book, through: :check_items 
    
    def add_product(book_id,favorite)
        #CheckItem.find_or_initialize_by(book_id: book_id , favorite_id: favorite)
        check_items.find_or_initialize_by(book_id: book_id)
    end
end
