class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.references :user, index: true, null: false
      t.references :role, index: true, null: false

      t.timestamps
    end
  end
end
