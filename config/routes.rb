Rails.application.routes.draw do
  resources :juniors
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :advocates
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'advocates#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
