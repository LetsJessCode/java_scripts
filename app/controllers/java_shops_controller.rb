class JavaShopsController < ApplicationController
  before_action :set_java_shop, only: [:show, :update, :destroy]

  # GET /java_shops
  def index
    @java_shops = JavaShop.all

    render json: @java_shops
  end

  # GET /java_shops/1
  def show
    render json: @java_shop
  end

  # POST /java_shops
  def create
    @java_shop = JavaShop.new(java_shop_params)

    if @java_shop.save
      render json: @java_shop, status: :created, location: @java_shop
    else
      render json: @java_shop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /java_shops/1
  def update
    if @java_shop.update(java_shop_params)
      render json: @java_shop
    else
      render json: @java_shop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /java_shops/1
  def destroy
    @java_shop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_shop
      @java_shop = JavaShop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def java_shop_params
      params.require(:java_shop).permit(:shop_name)
    end
end
