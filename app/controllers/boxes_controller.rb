class BoxesController < ApplicationController 
  def index
    @boxes = Box.all
  end

  def show
    # require 'pry'; binding.pry
    @box = Box.find(params[:id])
  end
end