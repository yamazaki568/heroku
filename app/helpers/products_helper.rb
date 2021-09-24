module ProductsHelper
    def current_favorite?(book)
        check_items = CheckItem.all
        check_items.map{|i| i.book_id}.include?(book.id)
        
    end
    
end
