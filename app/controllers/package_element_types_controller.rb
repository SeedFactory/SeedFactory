class PackageElementTypesController < ApplicationController
  before_action :set_package_element_type, only: [:show, :edit, :update, :destroy]

  # GET /package_element_types
  def index
    @package_element_types = PackageElementType.all
  end

  # GET /package_element_types/1
  def show
  end

  # GET /package_element_types/new
  def new
    @package_element_type = PackageElementType.new
  end

  # GET /package_element_types/1/edit
  def edit
  end

  # POST /package_element_types
  def create
    @package_element_type = PackageElementType.new(package_element_type_params)

    if @package_element_type.save
      redirect_to @package_element_type, notice: 'Package element type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /package_element_types/1
  def update
    if @package_element_type.update(package_element_type_params)
      redirect_to @package_element_type, notice: 'Package element type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /package_element_types/1
  def destroy
    @package_element_type.destroy
    redirect_to package_element_types_url, notice: 'Package element type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_element_type
      @package_element_type = PackageElementType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def package_element_type_params
      params.require(:package_element_type).permit(:name)
    end
end
