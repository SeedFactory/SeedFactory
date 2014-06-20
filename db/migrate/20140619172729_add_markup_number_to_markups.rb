class AddMarkupNumberToMarkups < ActiveRecord::Migration
  def change
    add_column :markups, :markup_number, :integer
  end
end
