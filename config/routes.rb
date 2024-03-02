Rails.application.routes.draw do
  resources :units
  resources :amounts
  resources :recipes
  resources :steps, only: [:new]
  resources :ingredients
  resources :categories
  root "home#index"
end
