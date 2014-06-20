module ResourcefulController

  def self.included base
    base.before_action :set_resource, only: [:show, :edit, :update, :destroy]
  end

  def index
    instance_variable_set("@#{controller_name}", collection)
  end

  def show
  end

  def new
    set_resource(controller_model.new)
  end

  def edit
  end

  def create
    set_resource(controller_model.new(resource_params))
    if resource.save
      redirect_to resource, notice: 'Record was successfully created.'
    else
      render :new
    end
  end

  def update
    if resource.update(resource_params)
      redirect_to resource, notice: 'Record was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    resource.destroy
    redirect_to controller_model, notice: 'Record was successfully destroyed.'
  end

  private

  def resource
    instance_variable_get("@#{resource_name}")
  end

  def resource_name
    controller_name.singularize
  end

  def resource_params
    params.require(resource_name).permit(*permitted_params)
  end

  def permitted_params
    []
  end

  def set_resource record
    record ||= controller_model.find(params[:id])
    instance_variable_set("@#{resource_name}", record)
  end

  def collection
    controller_model.all
  end

  def controller_model
    controller_name.classify.constantize
  end

end