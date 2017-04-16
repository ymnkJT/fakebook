Rails.application.routes.draw do
  root 'topics#index'
  devise_for :users
  resources :topics, only: [:index, :create, :edit, :update, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
