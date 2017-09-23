Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  get 'users/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  root 'todos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
end
