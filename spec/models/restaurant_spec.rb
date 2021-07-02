# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Restaurant do
  context 'products total' do
    it 'returns number of products for a restaurant' do
      restaurant = Restaurant.create(name: 'Restaurant 1', address: 'Address 1')

      product1 = Product.create(name: 'Pizza', value: 59.9, restaurant: restaurant)
      product2 = Product.create(name: 'Pasta', value: 19.9, restaurant: restaurant)

      expect(restaurant.products_total).to eq 2
    end
  end
end
