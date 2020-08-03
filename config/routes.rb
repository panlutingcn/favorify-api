Rails.application.routes.draw do
  get 'bids/create'
  get 'bids/index'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bids
end
