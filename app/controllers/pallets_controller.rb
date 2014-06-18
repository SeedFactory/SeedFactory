class PalletsController < ApplicationController
  before_action :set_pallet, only: [:show, :edit, :update, :destroy]

  # GET /pallets
  def index
    @pallets = Pallet.all
  end

  # GET /pallets/1
  def show
  end

  # GET /pallets/new
  def new
    @pallet = Pallet.new
  end

  # GET /pallets/1/edit
  def edit
  end

  # POST /pallets
  def create
    @pallet = Pallet.new(pallet_params)

    if @pallet.save
      redirect_to @pallet, notice: 'Pallet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pallets/1
  def update
    if @pallet.update(pallet_params)
      redirect_to @pallet, notice: 'Pallet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pallets/1
  def destroy
    @pallet.destroy
    redirect_to pallets_url, notice: 'Pallet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pallet
      @pallet = Pallet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pallet_params
      params.require(:pallet).permit(:description, :size)
    end
end
