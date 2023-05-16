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
    Box.create!(name: params[:name])
    redirect_to "/boxes"
  end

  def edit
  end

  # def update
  # end
end