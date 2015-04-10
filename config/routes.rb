Rails.application.routes.draw do
  root to: 'pages#home', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'sessions#create'

  get '/home', to: 'pages#home'
end
