Rails.application.routes.draw do
  root 'articles#index'

  get  '/register',  to: 'users#new'
  get  '/login',     to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  get  'logout',     to: 'sessions#destroy'
  get  '/email_form',     to: 'dt_crs#email_form', as: :email_form

  resources :users, except: [:destroy] do
    resources :articles
  end

  resources :articles do
    resources :comments, only: [:create, :show]
  end
  
  resources :dt_crs
end