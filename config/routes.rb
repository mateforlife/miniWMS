
Rails.application.routes.draw do
  resources :receptions do
    resources :pallets, only: %i[create destroy update]
  end
  resources :pallets
  resources :schedulings
  resources :clients
  resources :operations
  resources :doors
  resources :locations
  resources :products

  devise_for :users
  get 'welcome/index'

  #resources :levels
  #resources :slots
  #resources :passages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'welcome#index'
end
