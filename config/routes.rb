Rails.application.routes.draw do
  resources :businesses
  devise_for :users, controllers: {registrations: 'user/registrations'}
  resources :after_signup ,only: [:show, :update]
  root to: 'home#index'
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
end
