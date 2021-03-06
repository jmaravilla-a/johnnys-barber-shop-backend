Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :items, only: [:index]
  resources :order_items, only: [:create, :destroy]
  resources :orders, only: [:index]

  get '/me', to: "users#show"

  post '/login', to: "sessions#create"

  delete '/logout', to: "sessions#destroy"

  post '/create-checkout-session', to: "checkout_sessions#create"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
