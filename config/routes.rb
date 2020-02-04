Rails.application.routes.draw do
  
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources :controllers
  root 'users#index'
  
  resources :users
  resources :languages
  resources :sites
  
  resources :user do
    resources :favorites
  end
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
