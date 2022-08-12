class PagesController < ApplicationController
  def index
    @categories = Category.all
    
    @products = Product.all
    
    @product_categories = ProductCategory.all
    
    @order_item = current_order.order_items.new
  end
  
  def show
    @product = Product.friendly.find(params[:id])
  end
  
end
