class ProductIngredientsController < ApplicationController
  before_action :set_product_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /product_ingredients
  def index
    @product_ingredients = ProductIngredient.all
  end

  # GET /product_ingredients/1
  def show
  end

  # GET /product_ingredients/new
  def new
    @product_ingredient = ProductIngredient.new
  end

  # GET /product_ingredients/1/edit
  def edit
  end

  # POST /product_ingredients
  def create
    @product_ingredient = ProductIngredient.new(product_ingredient_params)

    if @product_ingredient.save
      redirect_to @product_ingredient, notice: 'Product ingredient was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /product_ingredients/1
  def update
    if @product_ingredient.update(product_ingredient_params)
      redirect_to @product_ingredient, notice: 'Product ingredient was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /product_ingredients/1
  def destroy
    @product_ingredient.destroy
    redirect_to product_ingredients_url, notice: 'Product ingredient was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_ingredient
      @product_ingredient = ProductIngredient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_ingredient_params
      params.require(:product_ingredient).permit(:product_id, :ingredient_id, :amount)
    end
end
