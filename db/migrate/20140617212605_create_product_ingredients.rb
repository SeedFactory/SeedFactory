class CreateProductIngredients < ActiveRecord::Migration
  def change
    create_table :product_ingredients do |t|
      t.references :product, index: true, null: false
      t.references :ingredient, index: true, null: false
      t.decimal :amount, null: false

      t.timestamps
    end
  end
end
