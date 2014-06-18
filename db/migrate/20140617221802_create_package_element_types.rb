class CreatePackageElementTypes < ActiveRecord::Migration
  def change
    create_table :package_element_types do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :package_element_types, :name
  end
end
