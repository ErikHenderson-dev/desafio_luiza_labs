class AddProductsToFavoriteProducts < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :favorite_products, :products
  end
end
