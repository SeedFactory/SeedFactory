class ProductIngredient < ActiveRecord::Base

  belongs_to :product
  belongs_to :ingredient

  validates_presence_of :amount, :product_id, :ingredient_id

end
