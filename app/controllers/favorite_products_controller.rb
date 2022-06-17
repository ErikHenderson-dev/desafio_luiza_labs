# fronze_string_literal: true

class FavoriteProductsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    favorite_products = FavoriteProduct.all

    render json: favorite_products
  end

  def show
    favorite_product = FavoriteProduct.find_by(id: allow_params[:id])

    render json: favorite_product
  end

  def create
    favorite_product = Creators::FavoriteProductCreator.call(allow_params)

    render json: favorite_product
  end

  def update  
    favorite_product = Updaters::FavoriteProductUpdater.call(allow_params)

    render :ok
  end

  def destroy
    FavoriteProduct.where(id: allow_params[:id]).destroy_all

    render :ok
  end

  private

  def allow_params
    params.permit(:id, :client_id, :product_id)
  end
end
