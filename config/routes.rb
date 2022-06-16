Rails.application.routes.draw do
  resources :pictures
  root 'users#new'
  resources :users, only: %i(new create show edit destroy)
  resources :sessions, only: %i(new create destroy)
end
