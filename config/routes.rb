Rails.application.routes.draw do
  resources :pallet_locations
  resources :pallet_assignments
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
  root to: 'welcome#index'
end
