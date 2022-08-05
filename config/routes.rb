Rails.application.routes.draw do
  devise_for :users
  # resources :categories
  # resources :deals
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "categories#index"

  # resources :users do
    resources :categories, only: [:index, :show, :new, :create, :destroy] do
      resources :deals, only: [:index, :show, :new, :create, :destroy]
    end
  # end

end
