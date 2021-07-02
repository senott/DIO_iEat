# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Restaurant do
  it { should have_many(:products) }

  it { should validate_presence_of :name }

  context 'products total' do
    let!(:restaurant) { create(:restaurant) }

    let!(:products) { create_list(:product, 2, restaurant: restaurant) }

    it 'returns number of products for a restaurant' do
      expect(restaurant.products_total).to eq 2
    end
  end
end
