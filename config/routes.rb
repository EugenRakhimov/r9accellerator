Rails.application.routes.draw do
  resources :alerts
  resources :shipments
  resources :accounts
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
