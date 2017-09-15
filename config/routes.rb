Rails.application.routes.draw do
  get 'users/index' => 'users#index'

  root 'users#index'

  get '/tournaments' => 'tournaments#index'

  get '/tournaments/:id' => 'tournaments#show'
  # resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
