Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :deals
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show, :new, :create] do
    resources :deals, only: [:index, :show, :new, :create]
  end

  # Defines the root path route ("/")
  root "categories#index"
end
