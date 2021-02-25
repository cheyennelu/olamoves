Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :videos, only: [:index, :show]

  resources :orders, only: [:new, :create, :destroy]
  get '/cart', to: 'orders#checkout'

  get '/myprofile', to: 'pages#myprofile'

end
