class IngredientsController < ApplicationController

  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [:number, :description, :cwt, :cost, :protein, :fat, :fiber, :ash, :calcium,
      :phosphorus, :vitamin_a, :vitamin_d3, :vitamin_e, :vitamin_k,
      :vitamin_b12, :riboflavin, :met_energy, :panto, :niacin]
  end

end
