class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :brand
      t.float :price
      t.string :image
      t.float :review_score

      t.timestamps
    end
  end
end
