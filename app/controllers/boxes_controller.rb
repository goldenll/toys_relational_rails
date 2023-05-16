class BoxesController < ApplicationController 
  def index
    @boxes = Box.all
    @boxes.sort_by(&:created_at).reverse
  end

  def show
    @box = Box.find(params[:id])
  end

  def new
  end

  def create 
    Box.create!(box_params)
    redirect_to "/boxes"
  end

  def edit
    @box = Box.find(params[:id])
  end

  def update
    box = Box.find(params[:id])
    box.update(box_params)
    redirect_to "/boxes/#{box.id}"
  end

  private
  def box_params
    params.permit(:name, :capacity, :full)
  end

end