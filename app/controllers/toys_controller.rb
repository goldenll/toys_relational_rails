class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def show
    # require 'pry'; binding.pry
    @toy = Toy.find(params[:id])
  end
end