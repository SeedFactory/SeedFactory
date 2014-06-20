Rails.application.routes.draw do

  resources :brands
  resources :categories
  resources :ingredients
  resources :item_classes
  resources :markups
  resources :package_element_types
  resources :package_elements
  resources :pallets
  resources :product_ingredients
  resources :product_package_elements
  resources :product_types
  resources :products
  resources :users

  get 'login' => 'user_sessions#new'
  post 'login' => 'user_sessions#create'
  get 'logout' => 'user_sessions#destroy'

  root to: 'static#index'
  
end
