class AddFormulaNumberToProducts < ActiveRecord::Migration
  def change
    add_column :products, :formula_number, :string
  end
end
