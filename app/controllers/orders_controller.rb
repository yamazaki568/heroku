class OrdersController < ApplicationController
  #layout 'front'

  
  
  def new

    @order = Order.new
    @line_items = LineItem.all
  end
  
  def confirm
      #@product = Book.find(order_params[:book_id])
      @order = Order.new(order_params)
      @line_items = current_cart.line_items
      @cart = current_cart
  end
  
  def index
    @orders = Order.order("created_at DESC")
    render layout: 'application'
  end
  
  def show
    @order = Order.find(params[:id])
    render layout: 'application'
  end
  
  
  def create
    unless user_signed_in?
      redirect_to cart_path(@current_cart), notice: 'ログインしてください'
      return
      
    end
      
    @order = Order.new(order_params)
    
    if @order.save!
      @line_items = current_cart.line_items
      
      OrderDetail.create_items(@order, @line_items)
      OrderMailer.confirm_mail(@order).deliver
      redirect_to products_index_path, notice: '注文が正常に登録されました'
    else
      redirect_to products_index_path, notice: '注文の登録が出来ませんでした'
    end
  end
  
  private
  def order_params
    params.require(:order).permit(:address,:quantity,:book_id,:user_id)
  end
  
  def set_line_items
    @line_items = @current_cart.line_items
  end
  

end
