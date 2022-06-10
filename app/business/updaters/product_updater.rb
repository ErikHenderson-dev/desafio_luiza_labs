# fronze_string_literal: true

module Updaters
  class ProductUpdater < BaseMethod
    def execute
      product_update
    end

    private

    def product_update      
      product = Product.find(params[:id])
      
      product.update(
        title: params[:title],
        brand: params[:brand],
        price: params[:price],
        image: params[:image],
        review_score: params[:review_score]
      )
    end
  end
end
