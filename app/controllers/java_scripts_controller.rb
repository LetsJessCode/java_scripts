class JavaScriptsController < ApplicationController
  before_action :set_java_script, only: [:show, :update, :destroy]

  # GET /java_scripts
  def index
    @java_scripts = JavaScript.all

    render json: @java_scripts
  end

  # GET /java_scripts/1
  def show
    render json: @java_script
  end

  # POST /java_scripts
  def create
    @java_script = JavaScript.new(java_script_params)

    if @java_script.save
      render json: @java_script, status: :created, location: @java_script
    else
      render json: @java_script.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /java_scripts/1
  def update
    if @java_script.update(java_script_params)
      render json: @java_script
    else
      render json: @java_script.errors, status: :unprocessable_entity
    end
  end

  # DELETE /java_scripts/1
  def destroy
    @java_script.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_script
      @java_script = JavaScript.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def java_script_params
      params.require(:java_script).permit(:shop_name, :fav_drink, :least_fav, :recommend, :comment, :person_id)
    end
end
