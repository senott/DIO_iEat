# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :products

  validates :name, presence: true

  def products_total
    products.count
  end
end
