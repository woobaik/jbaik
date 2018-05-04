Rails.application.routes.draw do

  resources :portfolios
  get 'angular-item', to: 'portfolios#angular'
  root to: 'portfolios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
