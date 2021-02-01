Rails.application.routes.draw do

  
  resources :companies do
    resources :frontpages
    resources :style_settings
    resources :services
    resources :work_periods
    resources :appointments
  end

  resources :users
  
  root 'root#home'
  get '/about' => 'root#about'
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  
end
