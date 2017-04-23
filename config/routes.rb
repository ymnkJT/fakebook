Rails.application.routes.draw do
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

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
