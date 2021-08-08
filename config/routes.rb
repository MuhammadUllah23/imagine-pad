Rails.application.routes.draw do
  resources :concepts
  resources :media_types
  resources :genres

  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
