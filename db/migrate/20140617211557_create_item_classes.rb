class CreateItemClasses < ActiveRecord::Migration
  def change
    create_table :item_classes do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :item_classes, :name
  end
end
