# fronze_string_literal: true

class ProductsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    products = Product.all

    render json: products
  end

  def show
    product = Product.find_by(id: allow_params[:id])

    render json: product
  end

  def create
    product = Creators::ProductCreator.call(allow_params)

    render json: product
  end

  def update  
    product = Updaters::ProductUpdater.call(allow_params)

    render :ok
  end

  def destroy
    Product.where(id: allow_params[:id]).destroy_all

    render :ok
  end

  private

  def allow_params
    params.permit(:id, :title, :brand, :price, :image, :review_score)
  end
end
