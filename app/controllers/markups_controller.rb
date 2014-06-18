class MarkupsController < ApplicationController
  before_action :set_markup, only: [:show, :edit, :update, :destroy]

  # GET /markups
  def index
    @markups = Markup.all
  end

  # GET /markups/1
  def show
  end

  # GET /markups/new
  def new
    @markup = Markup.new
  end

  # GET /markups/1/edit
  def edit
  end

  # POST /markups
  def create
    @markup = Markup.new(markup_params)

    if @markup.save
      redirect_to @markup, notice: 'Markup was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /markups/1
  def update
    if @markup.update(markup_params)
      redirect_to @markup, notice: 'Markup was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /markups/1
  def destroy
    @markup.destroy
    redirect_to markups_url, notice: 'Markup was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_markup
      @markup = Markup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def markup_params
      params.require(:markup).permit(:description, :jobber, :distributor, :wholesale, :dealer, :retail, :online)
    end
end
