class ToysBoxesController < ApplicationController
  def index
    @boxes = Box.all
    @toys = Toy.all
    @box = Box.find(params[:id])
    # require 'pry'; binding.pry
  end

  def new
    @box = Box.find(params[:id])
  end

  def create
    box = Box.find(params[:id])
    toys = box.toys.create!(toy_params)
    redirect_to "/boxes/#{box.id}/toys"
  end

  private

  def toy_params
    params.permit(:name, :play_count, :age_appropriate)
  end
end

