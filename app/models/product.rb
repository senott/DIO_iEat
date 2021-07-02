# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true  
end
