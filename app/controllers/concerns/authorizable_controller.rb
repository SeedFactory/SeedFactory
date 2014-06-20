module AuthorizableController

  def self.included base
    base.filter_resource_access
  end

end