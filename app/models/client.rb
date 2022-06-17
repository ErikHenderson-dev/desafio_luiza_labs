# fronze_string_literal: true

class Client < ApplicationRecord
  has_one :favorite_product
  
  validates :id, :name, :email, presence: true

  validates :id,
            numericality: { only_integer: true }

  validates :email, uniqueness: true
end
