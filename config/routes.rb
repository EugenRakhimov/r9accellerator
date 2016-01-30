Rails.application.routes.draw do
  resources :alerts
  get 'dashboard/index'

  resources :shipments
  resources :accounts
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
