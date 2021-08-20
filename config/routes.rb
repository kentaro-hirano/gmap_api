Rails.application.routes.draw do
  root 'maps#index'
  resources :maps, only: [:index]

  get '/map_request', to: 'maps#map', as: 'map_request'
end
