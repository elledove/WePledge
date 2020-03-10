Rails.application.routes.draw do
  #get 'welcome/index'
  root 'welcome#index'
  resources :users 
  resources :organizations, only: [:index, :new]
  #get '/donations', to: 'donations#index'
resources :donations, only: [:index, :create, :new] do
resources :organizations, only: [:index, :new]
end

#resources :organizations, only: :create

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
