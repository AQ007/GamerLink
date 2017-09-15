Rails.application.routes.draw do
  get 'users' => 'users#index'

  root 'welcome#index'

  get '/tournaments' => 'tournaments#index'

  get 'tournaments/new'=> 'tournaments#new'

  get '/tournaments/:id' => 'tournaments#show', as: "tournament"

  get 'users/new' => 'users#new'

  get 'fail' => 'welcome#fail'



  # get 'users/:id' => 'users#show'
  get 'users/:id' => 'users#show', as: "user"
  post '/users' => 'users#create'



  # resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
