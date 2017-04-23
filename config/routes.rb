Rails.application.routes.draw do
  get 'relationships/create'

  get 'relationships/destroy'

  root 'topics#index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :topics, only: [:index, :create, :edit, :update, :destroy]
  resources :topics do
    resources :comments
    post :confirm, on: :collection
  end

  resources :users, only: [:index]
  resources :relationships, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
