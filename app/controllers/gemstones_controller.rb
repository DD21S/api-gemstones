class GemstonesController < ApplicationController
  def index
    @gemstones = Gemstone.all

    render json: @gemstones
  end

  def show
    @gemstone = Gemstone.find params[:id]

    render json: @gemstone
  end

  def create
    @gemstone = Gemstone.new gemstone_params

    if @gemstone.save 
      render json: @gemstone
    else
      render json: { message: "Gemstone has not been created." }, status: :unprocessable_entity
    end
  end

  def update
    @gemstone = Gemstone.find params[:id]

    if @gemstone.update gemstone_params
      render json: @gemstone
    else
      render json: { message: "Gemstone has not been updated." }, status: :unprocessable_entity
    end
  end

  def destroy
    @gemstone = Gemstone.find params[:id]
    @gemstone.destroy

    render json: {}
  end

  private
    def gemstone_params
      params.require(:gemstone).permit(:name, :description, :price)
    end
end
