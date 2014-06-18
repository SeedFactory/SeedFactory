class AddImageToPackageElement < ActiveRecord::Migration
  def up
    add_attachment :package_elements, :image
  end
  def down
    remove_attachment :package_elements, :image
  end
end
