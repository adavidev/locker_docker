Rails.application.routes.draw do
  get 'welcome/index'

  resources :bags
  post 'bags/check'
  post 'bags/retrieve'
  
  resources :tickets, only: [:show]

  root 'welcome#index'
end
