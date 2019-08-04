Rails.application.routes.draw do
  root "cuisines#index"
  resources :order_items
  resources :cuisines, only: [:index, :show]
  resources :restaurants
  resources :items
  resources :orders
  resources :users
  resource :cart, only: [:show]
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/secretapology", to: "sessions#absolve", as: "absolve"
  get '/orders/:id/confirmation', to: 'orders#confirmation', as: 'confirmation'
  delete "/logout", to: "sessions#destroy", as: "logout"
  delete "/clearcart", to: "carts#destroy", as: "clear_cart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
