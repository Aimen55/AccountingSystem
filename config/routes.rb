Rails.application.routes.draw do
  get 'welcome/index'
  get '/dashboard' => 'dashboard#index'
  # devise_for :users
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  end
  # get 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
resources :funds
resources :accounts 
resources :ledgers
resources :account_types
# get '/users/new' =>  'users#new'
post '/users/create' => 'users#create'
#post '/ledger/new' => 'ledgers#create'
end
