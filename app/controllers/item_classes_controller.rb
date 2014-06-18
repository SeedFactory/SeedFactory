class ItemClassesController < ApplicationController
  before_action :set_item_class, only: [:show, :edit, :update, :destroy]

  # GET /item_classes
  def index
    @item_classes = ItemClass.all
  end

  # GET /item_classes/1
  def show
  end

  # GET /item_classes/new
  def new
    @item_class = ItemClass.new
  end

  # GET /item_classes/1/edit
  def edit
  end

  # POST /item_classes
  def create
    @item_class = ItemClass.new(item_class_params)

    if @item_class.save
      redirect_to @item_class, notice: 'Item class was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /item_classes/1
  def update
    if @item_class.update(item_class_params)
      redirect_to @item_class, notice: 'Item class was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /item_classes/1
  def destroy
    @item_class.destroy
    redirect_to item_classes_url, notice: 'Item class was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_class
      @item_class = ItemClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_class_params
      params.require(:item_class).permit(:name)
    end
end
