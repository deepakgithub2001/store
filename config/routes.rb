Rails.application.routes.draw do
  resources :products do
  resources :subscribers, only: [ :create ]
  resource :unsubscribe, only: [ :show ]
  end
  resource :session
  resources :passwords, param: :token
  get "/products", to: "products#index"
  post "/products", to: "products#create"
  get "subscribers/unsubscribe/:token", to: "subscribers#unsubscribe", as: :unsubscribe_subscriber
  root "products#index"
end
