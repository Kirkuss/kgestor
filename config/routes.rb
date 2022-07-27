Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sessions#login"

  get '/kpane', to: 'welcome#control_pane'
  get '/user', to: 'users#index'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
