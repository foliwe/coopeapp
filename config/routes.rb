Rails.application.routes.draw do
  resources :businesses
  devise_for :users
  root to: 'home#index'
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
end
