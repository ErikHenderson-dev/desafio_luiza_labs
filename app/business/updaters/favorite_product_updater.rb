# fronze_string_literal: true

module Updaters
  class FavoriteProductUpdater < BaseMethod
    def execute
      favorite_products_update
    end

    private

    def favorite_products_update      
      favorite_product = FavoriteProduct.find(params[:id])
      
      favorite_product.update(
        client_id: params[:client_id],
        product_id: params[:product_id]
      )
    end
  end
end
