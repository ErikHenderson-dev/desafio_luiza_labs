# fronze_string_literal: true

module Creators
  class ProductCreator < BaseMethod
    def execute
      product_create
    end

    private

    def product_create
      Product.create(
        id: params[:id],
        title: params[:title],
        brand: params[:brand],
        price: params[:price],
        image: params[:image],
        review_score: params[:review_score]
      )
    end
  end
end
