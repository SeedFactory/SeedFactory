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

  resource :user_session

  root to: 'static#index'
  
end
