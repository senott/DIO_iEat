class Restaurant < ApplicationRecord
  has_many :products

  def products_total
    products.count
  end
end
