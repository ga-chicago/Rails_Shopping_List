class ShoppingListController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(
      :name => params[:product][:name],
      :quantity => params[:product][:quantity].to_i)
  end

  def delete
    @product = Product.find(params[:product][:id].to_i)
    @product.destroy
  end
end
