Rails.application.routes.draw do

  
  namespace :company do
    resources :frontpages
  end
  resources :companies do
    end
  resources :users
  
  root 'root#home'
  get '/about' => 'root#about'
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  
end
