Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'informations', to: 'pages#informations'
  resources :games, only: :index
  resources :movies, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
