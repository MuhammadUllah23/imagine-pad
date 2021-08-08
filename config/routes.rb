Rails.application.routes.draw do
  root to: 'sessions#welcome'

  resources :concepts
  resources :media_types
  resources :genres

  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/auth/facebook/callback' => 'sessions#omniauth' 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
