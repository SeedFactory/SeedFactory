Rails.application.routes.draw do

  resources :pallets

  resources :product_package_elements

  resources :package_element_types

  resources :product_types

  resources :package_elements
  resources :product_ingredients
  resources :markups
  resources :brands
  resources :item_classes
  resources :categories
  resources :ingredients
  resources :products

  root to: 'static#index'
  
end
