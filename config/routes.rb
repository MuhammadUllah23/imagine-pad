Rails.application.routes.draw do
  root to: 'sessions#welcome'

  resources :concepts, only: [:index, :new, :create]

  resources :genres do
    resources :concepts, shallow: true
  end

  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/auth/facebook/callback', to: 'sessions#omniauth' 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
