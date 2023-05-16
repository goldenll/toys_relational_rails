class ToysBoxesController < ApplicationController
  def index
    @boxes = Box.all
    @toys = Toy.all
  end

  def new
  end

  def create
    Box.create!(name: params[:name])
    redirect_to "/boxes/:id/toys"
  end
end
