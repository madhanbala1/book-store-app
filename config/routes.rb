Rails.application.routes.draw do
  # get 'orders/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :orders

  root 'orders#search'
end
