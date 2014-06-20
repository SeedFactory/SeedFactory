class AddNotesBagidDateEditedToPackageElements < ActiveRecord::Migration
  def change
    add_column :package_elements, :notes, :text
    add_column :package_elements, :bag_id, :integer
  end
end
