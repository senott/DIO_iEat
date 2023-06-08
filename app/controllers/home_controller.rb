# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    if current_user&.restaurant?
      @restaurant = current_user.restaurant
      @products = @restaurant.products
    elsif current_user&.customer?
      @restaurants = Restaurant.includes(:products).all
    end
  end
end
