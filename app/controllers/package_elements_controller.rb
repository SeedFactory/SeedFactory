class PackageElementsController < ApplicationController
  
  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [:name, :package_element_type_id, :number, :size, :cost]
  end
  
end
