class JavaBarsController < ApplicationController
  before_action :set_java_bar, only: [:show, :update, :destroy]

  # GET /java_bars
  def index
    @java_bars = JavaBar.all

    render json: @java_bars
  end

  # GET /java_bars/1
  def show
    render json: @java_bar
  end

  # POST /java_bars
  def create
    @java_bar = JavaBar.new(java_bar_params)

    if @java_bar.save
      render json: @java_bar, status: :created, location: @java_bar
    else
      render json: @java_bar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /java_bars/1
  def update
    if @java_bar.update(java_bar_params)
      render json: @java_bar
    else
      render json: @java_bar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /java_bars/1
  def destroy
    @java_bar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_bar
      @java_bar = JavaBar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def java_bar_params
      params.require(:java_bar).permit(:shop_name, :fav_drink, :least_fav, :recommend, :comment, :people)
    end
end
