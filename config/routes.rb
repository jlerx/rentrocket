Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :orders
  end
  resources :orders, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
  get 'favoris', to: 'pages#favoris'
end
