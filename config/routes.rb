Rails.application.routes.draw do
  #get 'welcome/index'
  root 'welcome#index'
  resources :users, :organizations 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
