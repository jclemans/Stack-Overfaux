StackOverflow::Application.routes.draw do

  root to: "questions#index"
  resources :users
  resources :favorites, only: [:create]
  resources :questions do
    resources :answers
  end
  resources :sessions, only: [:create, :new, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
