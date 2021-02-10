Rails.application.routes.draw do
  root to: 'home#index'
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
end
