Rails.application.routes.draw do
  #get 'welcome/index'
  root 'welcome#index'
  get 'organization/animal_search' , to: 'organizations#search', as: 'animal_search'
  get 'auth/:provider/callback', to: 'sessions#create'


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  #resources :users 
  resources :organizations 
 resources :donations, only:[:create, :new]

 resources :organizations, only: [:index, :new] do
resources :donations, only: [:index, :create, :new, :show]






end

#resources :organizations, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end























#get '/donations', to: 'donations#index'
 ##resources :donations, only: [:index, :create, :new] do
 ##resources :organizations, only: [:index, :new]