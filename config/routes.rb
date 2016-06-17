Rails.application.routes.draw do
  root 'sessions#index'
  post :login, to: 'sessions#create'
  delete :logout, to: 'sessions#destroy'

  resources :features
  resources :user
end
