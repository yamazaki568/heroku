class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  def current_cart
      @current_cart = Cart.find_by(id: session[:cart_id])
      @current_cart = Cart.create unless @current_cart
      session[:cart_id] = @current_cart.id
      @current_cart
  end
  
  
  private
  def current_favorite
    favorite = Favorite.find_by(id: session[:favorite_id])
    favorite = Favorite.create unless favorite
    session[:favorite_id] = favorite.id
    favorite

  end
end