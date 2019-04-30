Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'users#new'
resources :funds
resources :accounts 

get '/users/new' =>  'users#new'
post '/users/create' => 'users#create' 
end