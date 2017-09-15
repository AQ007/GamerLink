Rails.application.routes.draw do
  get 'users' => 'users#index'

  root 'welcome#index'

  get '/tournaments' => 'tournaments#index'

  get '/tournaments/:id' => 'tournaments#show', as: "tournament"

  # get 'users/:id' => 'users#show'
  get 'users/:id' => 'users#show', as: "user"




  # resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
