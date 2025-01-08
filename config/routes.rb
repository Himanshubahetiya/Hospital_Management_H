Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get "up" => "rails/health#show", as: :rails_health_check
  resources :accounts, only: [:index, :show, :create ,:update, :destroy]
  resources :login, only: [:create]
  mount ActionCable.server => '/cable'
end


