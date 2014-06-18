class ProductPackageElementsController < ApplicationController
  before_action :set_product_package_element, only: [:show, :edit, :update, :destroy]

  # GET /product_package_elements
  def index
    @product_package_elements = ProductPackageElement.all
  end

  # GET /product_package_elements/1
  def show
  end

  # GET /product_package_elements/new
  def new
    @product_package_element = ProductPackageElement.new
  end

  # GET /product_package_elements/1/edit
  def edit
  end

  # POST /product_package_elements
  def create
    @product_package_element = ProductPackageElement.new(product_package_element_params)

    if @product_package_element.save
      redirect_to @product_package_element, notice: 'Product package element was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /product_package_elements/1
  def update
    if @product_package_element.update(product_package_element_params)
      redirect_to @product_package_element, notice: 'Product package element was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /product_package_elements/1
  def destroy
    @product_package_element.destroy
    redirect_to product_package_elements_url, notice: 'Product package element was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_package_element
      @product_package_element = ProductPackageElement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_package_element_params
      params.require(:product_package_element).permit(:product_id, :package_element_id)
    end
end
