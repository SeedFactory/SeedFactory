class CreatePackageElements < ActiveRecord::Migration
  def change
    create_table :package_elements do |t|
      t.string :name
      t.references :package_element_type, index: true, null: false
      t.string :number, null: false
      t.string :size, null: false
      t.decimal :cost, null: false
      t.text :notes

      t.timestamps
    end
  end
end
