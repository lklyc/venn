Rails.application.routes.draw do
  root to: 'pages#home', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/home', to: 'pages#home'

  resources :polls, only: [:index, :new, :create, :show, :edit, :update] do 
    resources :responses, only: [:create, :new, :show]
  end
end
