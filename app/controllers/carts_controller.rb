require 'pry'
class CartsController < ApplicationController

  def show
    current_cart
  end

  def checkout
    current_cart.checkout
    current_cart.delete
    redirect_to cart_path
  end

end
