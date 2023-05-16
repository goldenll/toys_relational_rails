class ResourcesController < ApplicationController 
  def edit
    @box = Box.create!(name: params[:name])
    redirect_to "/boxes/:id"
  end
end