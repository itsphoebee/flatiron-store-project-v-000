require 'pry'
class LineItemsController < ApplicationController
  def create
    if current_user
      if current_cart.nil?
        current_user.current_cart = Cart.create(user_id: current_user.id)
        current_user.save
      end

      current_cart.add_item(params[:item_id]).save
      redirect_to cart_path(current_cart)
    else
      redirect_to store_path
    end
  end
end
