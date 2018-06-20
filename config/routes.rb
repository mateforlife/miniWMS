Rails.application.routes.draw do
  resources :product_locations
  resources :schedulings
  resources :clients
  resources :operations
  resources :doors
  devise_for :users
  
  resources :products
  get 'welcome/index'
  resources :locations
  #resources :levels
  #resources :slots
  #resources :passages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'welcome#index'
end
