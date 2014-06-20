class ProductIngredientsController < ApplicationController

  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [:product_id, :ingredient_id, :amount]
  end

end
