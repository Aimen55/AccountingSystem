Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  # get 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
resources :funds
resources :accounts 

# get '/users/new' =>  'users#new'
post '/users/create' => 'users#create' 
end
