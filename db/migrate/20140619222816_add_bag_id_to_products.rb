class AddBagIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bag_id, :integer
  end
end
