Rails.application.routes.draw do
  get 'dashboard/index'

  resources :alerts
  resources :shipments
  resources :accounts
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
