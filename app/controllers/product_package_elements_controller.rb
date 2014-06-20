class ProductPackageElementsController < ApplicationController

  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [:product_id, :package_element_id]
  end

end
