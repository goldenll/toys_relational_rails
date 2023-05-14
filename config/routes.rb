Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/boxes', to: 'boxes#index'
  get '/boxes/:id', to: 'boxes#show'
  get '/toys', to: 'toys#index'
  get 'toys/:id', to: 'toys#show'
  get '/boxes/:id/toys', to: 'toys_boxes#index'
end
