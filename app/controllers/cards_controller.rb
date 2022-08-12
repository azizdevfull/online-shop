class CardsController < ApplicationController
  
  def index
    @order_items = current_order.order_items
  end
  

  def show
  end
end
