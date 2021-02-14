Rails.application.routes.draw do
  require 'sidekiq/web'
  resources :businesses
  devise_for :users
  root to: 'home#index'
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
end
