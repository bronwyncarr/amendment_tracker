Rails.application.routes.draw do
  devise_for :users
  root to: 'home#page'
  resources :records
  get '/pending', to: 'records#pending'
end
