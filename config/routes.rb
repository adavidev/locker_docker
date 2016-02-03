Rails.application.routes.draw do
  get 'welcome/index'

  resources :bags, only: [:show]
  post 'bags/check'
  post 'bags/retrieve'

  root 'welcome#index'
end
