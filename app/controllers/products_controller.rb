class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(
        :code_prefix, 
        :code_suffix, 
        :code, 
        :name, 
        :weight, 
        :items_per_case, 
        :product_type_id, 
        :category_id, 
        :markup_id, 
        :item_class_id, 
        :upc, 
        :pallet_bag_count, 
        :pallet_case_count, 
        :pallet_size, 
        :pallet_weight, 
        :gaylord, 
        :description, 
        :brand_id, 
        :production_line, 
        :screen_size_top, 
        :screen_size_bottom, 
        :catalog_page,
        :image_product_original,
        :image_product,
        :image_hero,
        :image_front_original,
        :image_front,
        :image_back_original,
        :image_back,
        :image_bottom_original,
        :image_bottom,
        :tag_artwork,
        :overlabel_front_artwork,
        :overlabel_back_artwork)
    end
end
