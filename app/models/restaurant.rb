# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :products
  belongs_to :user

  validates :name, presence: true

  def products_total
    products.count
  end
end
