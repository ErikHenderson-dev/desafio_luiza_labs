# fronze_string_literal: true

class Product < ApplicationRecord
  has_many :favorite_product
  
  validates :id, :title, :brand, :price, presence: true

  validates :id,
            numericality: { only_integer: true }
end
