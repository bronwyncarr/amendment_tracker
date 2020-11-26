Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'home#page'
  resources :records
  get '/pending', to: 'records#pending'
end
