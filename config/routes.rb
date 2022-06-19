Rails.application.routes.draw do
  root 'users#new'
  resources :users, only: %i(new create show edit update)
  resources :sessions, only: %i(new create destroy)
  resources :favorites, only: %i(index create destroy)
  resources :pictures do
    collection do
      post :confirm
    end
  end
end
