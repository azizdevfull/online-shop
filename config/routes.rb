Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'cards/show'
  root 'pages#index'
  resources :product_categories
  resources :products
  # root 'categories#index'
  resources :categories
  resources :categoriers

  resources :cards

  resources :pages, only: [:index, :show]
  resources :order_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
