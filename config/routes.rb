Rails.application.routes.draw do
  root to: '/api/v1/gigs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'login', to: "login#login"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :gigs, only: [ :index, :show, :create, :update, :destroy ]
      resources :bids, only: [ :index, :show, :create, :update, :destroy ]
    end
  end
end
