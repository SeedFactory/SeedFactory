class CreateMarkups < ActiveRecord::Migration
  def change
    create_table :markups do |t|
      t.text :description
      t.integer :jobber, null: false
      t.integer :distributor, null: false
      t.integer :wholesale, null: false
      t.integer :dealer, null: false
      t.decimal :retail, null: false
      t.decimal :online, null: false

      t.timestamps
    end
  end
end
