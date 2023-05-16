Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/boxes", to: "boxes#index"
  get "/boxes/new", to: "boxes#new"
  get "/boxes/:id", to: "boxes#show"
  post "/boxes", to: "boxes#create"
  get "/boxes/:id/edit", to: "boxes#edit"
  patch "/boxes/:id", to: "boxes#update"
  
  get "/toys", to: "toys#index"
  get "toys/:id", to: "toys#show"
  get "/toys/:id/edit", to: "toys#edit"
  patch "toys/:id", to: "toys#update"

  get "/boxes/:id/toys", to: "toys_boxes#index"
  get "/boxes/:id/toys/edit", to: "toys_boxes#edit"
  get "/boxes/:id/toys/new", to: "toys_boxes#new"
  post "/boxes/:id/toys", to: "toys_boxes#create"
  # post "/boxes/:id/toys/new", to: "toys_boxes#create"
end
