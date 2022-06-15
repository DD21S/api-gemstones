class GemstonesController < ApplicationController
  def index
    @gemstones = Gemstones.all

    render json: @gemstones
  end

  def show
    @gemstone = Gemstones.find params[:id]

    render json: @gemstone
  end

  def create
    @gemstone = Gemstones.new gemstone_params

    if @gemstone.save 
      render json: @gemstone
    else
      render json: { message: "Gemstone has not been created." }, status: :unprocessable_entity
    end
  end

  def update
    @gemstone = Gemstones.find params[:id]

    if @gemstone.update gemstone_params
      render json: @gemstone
    else
      render json: { message: "Gemstone has not been updated." }, status: :unprocessable_entity
    end
  end

  def destroy
    @gemstone = Gemstones.find params[:id]
    @gemstone.destroy

    render json: {}
  end

  private
    def gemstone_params
      params.require(:gemstone).permit(:name, :description, :price)
    end
end
