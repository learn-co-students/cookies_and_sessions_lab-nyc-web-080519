class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart

  def cart
    session[:cart] ||= []
  end

  # def add_item_to_cart(item_id)
  #   cart << item_id
  # end

  # def view_cart_items
  #   @items = no model so this won't work
  # end
end
