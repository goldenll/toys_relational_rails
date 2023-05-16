class ToysBoxesController < ApplicationController
  def index
    @boxes = Box.all
    @toys = Toy.all
  end

  def new
  end

  def create
    # require 'pry'; binding.pry
    Box.create!(name: params[:name])
    # @toys = Toy.all
    redirect_to "/boxes/:id/toys"
  end
end
