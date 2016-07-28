Rails.application.routes.draw do

  root 'page#index'

  get '/secret' => 'page#secret'

  get '/register' => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
