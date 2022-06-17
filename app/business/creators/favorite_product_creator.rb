# fronze_string_literal: true

module Creators
  class FavoriteProductCreator < BaseMethod
    def execute
      favorite_products_create
    end

    private

    def favorite_products_create
      FavoriteProduct.create(
        id: params[:id],
        client_id: params[:client_id],
        product_id: params[:product_id]
      )
    end
  end
end
