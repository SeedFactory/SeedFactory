class MarkupsController < ApplicationController
  
  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [:description, :jobber, :distributor, :wholesale, :dealer, :retail, :online]
  end
  
end
