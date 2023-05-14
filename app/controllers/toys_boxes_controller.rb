class ToysBoxesController < ApplicationController
  def index
    #  require 'pry'; binding.pry
    @boxes = Box.all
    @toys = Toy.all
  end
end
