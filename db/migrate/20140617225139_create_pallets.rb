class CreatePallets < ActiveRecord::Migration
  def change
    create_table :pallets do |t|
      t.string :description
      t.string :size
      t.attachment :image

      t.timestamps
    end
  end
end
