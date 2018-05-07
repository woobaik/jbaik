Rails.application.routes.draw do

  devise_for :users
  resources :portfolios
  get 'angular-item', to: 'portfolios#angular'
  get 'ruby-on-rails', to: 'portfolios#rubyonrails'
  root to: 'portfolios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
