Rails.application.routes.draw do
  resources :items
  devise_for :users
  resources :thetags
  get 'hello/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
