Rails.application.routes.draw do
  root 'topics#index'
  devise_for :users

  resources :topics, only: [:index, :create, :edit, :update, :destroy]
end
