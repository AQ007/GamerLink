Rails.application.routes.draw do

  # Web App general routes
  root 'welcome#index'
  get 'fail' => 'welcome#fail'

  #sessions routes
  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # user routes
  get 'users/new' => 'users#new'
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show', as: "user"
  post '/users' => 'users#create'

  # tournaments routes
  get '/tournaments' => 'tournaments#index'
  get 'tournaments/new'=> 'tournaments#new'
  get '/tournaments/:id' => 'tournaments#show', as: "tournament"
  post 'tournaments' => 'tournaments#create'

  # Resources
  resources :games

end
