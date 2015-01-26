Rails.application.routes.draw do
  root 'articles#index'

  resources :users, except: [:destroy] do
    resources :articles
  end

  resources :articles
end