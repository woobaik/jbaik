Rails.application.routes.draw do

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios
  get 'angular-item', to: 'portfolios#angular'
  get 'ruby-on-rails', to: 'portfolios#rubyonrails'
  root to: 'portfolios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
