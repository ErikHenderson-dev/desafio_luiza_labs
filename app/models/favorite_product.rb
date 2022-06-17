# fronze_string_literal: true

class FavoriteProduct < ApplicationRecord
  belongs_to :client
  belongs_to :product

  validates :id, :client_id, :product_id, presence: true

  validates_uniqueness_of :client_id, :product_id

  validates :id,
            numericality: { only_integer: true }
end
