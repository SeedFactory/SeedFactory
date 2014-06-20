class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :number, null: false
      t.string :description, null: false
      t.integer :cwt
      t.decimal :cost, null: false
      t.decimal :protein
      t.decimal :fat
      t.decimal :fiber
      t.decimal :ash
      t.decimal :calcium
      t.decimal :phosphorus
      t.decimal :vitamin_a
      t.decimal :vitamin_d3
      t.decimal :vitamin_e
      t.decimal :vitamin_k
      t.decimal :vitamin_b12
      t.decimal :riboflavin
      t.decimal :met_energy
      t.decimal :panto
      t.decimal :niacin

      t.timestamps
    end
  end
end
