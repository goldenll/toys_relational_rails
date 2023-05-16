class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    toy = Toy.find(params[:id])
    toy.update(toy_params)
    redirect_to "/toys/#{toy.id}"
  end

  private
  def toy_params
    params.permit(:name, :play_count, :age_appropriate)
  end
end
