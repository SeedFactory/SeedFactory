class PackageElementsController < ApplicationController
  before_action :set_package_element, only: [:show, :edit, :update, :destroy]

  # GET /package_elements
  def index
    @package_elements = PackageElement.all
  end

  # GET /package_elements/1
  def show
  end

  # GET /package_elements/new
  def new
    @package_element = PackageElement.new
  end

  # GET /package_elements/1/edit
  def edit
  end

  # POST /package_elements
  def create
    @package_element = PackageElement.new(package_element_params)

    if @package_element.save
      redirect_to @package_element, notice: 'Package element was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /package_elements/1
  def update
    if @package_element.update(package_element_params)
      redirect_to @package_element, notice: 'Package element was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /package_elements/1
  def destroy
    @package_element.destroy
    redirect_to package_elements_url, notice: 'Package element was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_element
      @package_element = PackageElement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def package_element_params
      params.require(:package_element).permit(:name, :package_element_type_id, :number, :size, :cost)
    end
end
