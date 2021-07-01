class ProductsController < ApplicationController
  before_action :set_restaurants, only: %i[new]

  def index
    @products = Product.includes(:restaurant).all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to :index, notice: 'Product created successfully.' }
      else
        format.html { render :new, alert: 'Product creation failed.'}
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :value, :restaurant_id)
  end

  def set_restaurants
    @restaurants = Restaurant.all.order(:name)
  end
end
