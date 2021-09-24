class ProductsController < ApplicationController
  #layout 'front'
  
  def index
    @q = Book.ransack params[:q]
    @products = @q.result
    @books=Book.all
    @book=Book.all
    @checkItems=CheckItem.all
    @favorite = current_favorite
    @cart = current_cart
  end
  


  def show
    @product = Book.find(params[:id])
  end


  def new
    @product = Book.find(params[:book_id].to_i)
    @order = Order.new
    @books = Book.all
  end
  
end