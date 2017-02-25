Rails.application.routes.draw do
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/thanks' => 'pages#thanks'
    
  resources :signups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
