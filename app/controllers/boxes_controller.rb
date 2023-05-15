class BoxesController < ApplicationController 
  def index
    @boxes = Box.all
    @boxes.sort_by(&:created_at).reverse
  end

  def show
    @box = Box.find(params[:id])
  end
end