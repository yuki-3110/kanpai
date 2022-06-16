Rails.application.routes.draw do
  root 'users#new'
  resources :users, only: %i(new create show edit destroy)
  resources :sessions, only: %i(new create destroy)
end
