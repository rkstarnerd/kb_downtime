Rails.application.routes.draw do
  root 'articles#index'
  
  get '/register', to: 'users#new'
  get '/login',    to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get 'logout',    to: 'sessions#destroy'

  resources :users, except: [:destroy] do
    resources :articles
  end

  resources :articles

  resources :dt_crs
end