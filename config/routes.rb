Rails.application.routes.draw do
  resources :units
  resources :amounts
  resources :recipes
  get "/recipes/:id/new_step", to: "recipes#new_step", as: "new_recipe_step"
  resources :ingredients
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
