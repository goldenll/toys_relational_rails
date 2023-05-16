class ToysBoxesController < ApplicationController
  def index
    @boxes = Box.all
    @toys = Toy.all
  end

  def new
  end

  def create
    # require 'pry'; binding.pry
    box = Box.find(params[:id])
    toys = box.toys.create!(toys_params)
    # @toys = Toy.all
    redirect_to "/boxes/#{box.id}/toys"
  end
  private 
  def toys_params
    params.permit(:name, :play_count, :age_appropriate)
  end
end
