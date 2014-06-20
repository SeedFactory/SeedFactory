class PalletsController < ApplicationController
  
  include ResourcefulController
  include AuthorizableController

  private

  def permitted_params
    [:description, :size]
  end

end
