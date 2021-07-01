class ProductsController < ApplicationController
  def index
    @products = Product.includes(:restaurant).all
  end
end
