Rails.application.routes.draw do
  root 'search#search'
  get 'search', to: 'search#search'

  resources :users, except: [:destroy] do
    resources :articles
  end

  resources :articles
end