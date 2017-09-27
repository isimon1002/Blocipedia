Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :wikis
  resources :charges, only: [:new, :create]
  resources :wikis
  resources :collaborators, only: [:new, :create, :destroy]
  get 'charges/downgrade'
  post 'charges/downgrade' 
  get 'charges/validate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end