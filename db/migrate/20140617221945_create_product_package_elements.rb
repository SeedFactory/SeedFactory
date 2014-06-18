class CreateProductPackageElements < ActiveRecord::Migration
  def change
    create_table :product_package_elements do |t|
      t.references :product, index: true, null: false
      t.references :package_element, index: true, null: false

      t.timestamps
    end
  end
end
