class AddClientsToFavoriteProducts < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :favorite_products, :clients
  end
end
